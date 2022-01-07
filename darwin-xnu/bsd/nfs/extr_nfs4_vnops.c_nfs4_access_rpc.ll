; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_access_rpc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_access_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32*, i32*, i32*, i32, i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.nfsm_chain = type { i32 }
%struct.timeval = type { i32 }
%struct.nfsmount = type { i32, i32, i32 }
%struct.nfsreq_secinfo_args = type { i32 }
%struct.TYPE_14__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@NFS_FFLAG_TRIGGER_REFERRAL = common dso_local global i32 0, align 4
@NFSX_UNSIGNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"access\00", align 1
@NFS_OP_PUTFH = common dso_local global i32 0, align 4
@NFS_OP_ACCESS = common dso_local global i32 0, align 4
@NFS_OP_GETATTR = common dso_local global i32 0, align 4
@nfs_getattr_bitmap = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NFSPROC4_COMPOUND = common dso_local global i32 0, align 4
@NFS_ACCESS_DELETE = common dso_local global i32 0, align 4
@nfs_access_dotzfs = common dso_local global i64 0, align 8
@NULLVP = common dso_local global i64 0, align 8
@NISDOTZFSCHILD = common dso_local global i32 0, align 4
@NFS_ACCESS_MODIFY = common dso_local global i32 0, align 4
@NFS_ACCESS_EXTEND = common dso_local global i32 0, align 4
@nfs_access_delete = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_access_rpc(%struct.TYPE_16__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nfsm_chain, align 4
  %17 = alloca %struct.nfsm_chain, align 4
  %18 = alloca %struct.timeval, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.nfsmount*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.nfsreq_secinfo_args, align 4
  %26 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %27 = load i32, i32* @ENOENT, align 4
  store i32 %27, i32* %11, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %29 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_16__* %28)
  store %struct.nfsmount* %29, %struct.nfsmount** %22, align 8
  %30 = load %struct.nfsmount*, %struct.nfsmount** %22, align 8
  %31 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %23, align 4
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 7
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @NFS_FFLAG_TRIGGER_REFERRAL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %294

41:                                               ; preds = %4
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %43 = call i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args* %25, %struct.TYPE_16__* %42, i32* null, i32 0, i32* null, i32 0)
  %44 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %16)
  %45 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %17)
  store i32 3, i32* %13, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @NFSX_UNSIGNED, align 4
  %48 = mul nsw i32 17, %47
  %49 = call i32 @nfsm_chain_build_alloc_init(i32 %46, %struct.nfsm_chain* %16, i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.nfsmount*, %struct.nfsmount** %22, align 8
  %52 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @nfsm_chain_add_compound_header(i32 %50, %struct.nfsm_chain* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @NFS_OP_PUTFH, align 4
  %60 = call i32 @nfsm_chain_add_32(i32 %58, %struct.nfsm_chain* %16, i32 %59)
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %23, align 4
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @nfsm_chain_add_fh(i32 %61, %struct.nfsm_chain* %16, i32 %62, i32 %65, i32 %68)
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @NFS_OP_ACCESS, align 4
  %74 = call i32 @nfsm_chain_add_32(i32 %72, %struct.nfsm_chain* %16, i32 %73)
  %75 = load i32, i32* %10, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @nfsm_chain_add_32(i32 %75, %struct.nfsm_chain* %16, i32 %77)
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @NFS_OP_GETATTR, align 4
  %83 = call i32 @nfsm_chain_add_32(i32 %81, %struct.nfsm_chain* %16, i32 %82)
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @nfs_getattr_bitmap, align 4
  %86 = load %struct.nfsmount*, %struct.nfsmount** %22, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %88 = call i32 @nfsm_chain_add_bitmap_supported(i32 %84, %struct.nfsm_chain* %16, i32 %85, %struct.nfsmount* %86, %struct.TYPE_16__* %87)
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @nfsm_chain_build_done(i32 %89, %struct.nfsm_chain* %16)
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp eq i32 %92, 0
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* @EPROTO, align 4
  %96 = call i32 @nfsm_assert(i32 %91, i32 %94, i32 %95)
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @nfsmout_if(i32 %97)
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %100 = load i32, i32* @NFSPROC4_COMPOUND, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @vfs_context_thread(i32 %101)
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @vfs_context_ucred(i32 %103)
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @nfs_request2(%struct.TYPE_16__* %99, i32* null, %struct.nfsm_chain* %16, i32 %100, i32 %102, i32 %104, %struct.nfsreq_secinfo_args* %25, i32 %105, %struct.nfsm_chain* %17, i32* %15, i32* %12)
  store i32 %106, i32* %10, align 4
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %108 = call i32 @nfs_node_lock(%struct.TYPE_16__* %107)
  store i32 %108, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %41
  %111 = load i32, i32* %11, align 4
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %110, %41
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @nfsm_chain_skip_tag(i32 %113, %struct.nfsm_chain* %17)
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @nfsm_chain_get_32(i32 %115, %struct.nfsm_chain* %17, i32 %116)
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @NFS_OP_PUTFH, align 4
  %120 = call i32 @nfsm_chain_op_check(i32 %118, %struct.nfsm_chain* %17, i32 %119)
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @NFS_OP_ACCESS, align 4
  %123 = call i32 @nfsm_chain_op_check(i32 %121, %struct.nfsm_chain* %17, i32 %122)
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %20, align 4
  %126 = call i32 @nfsm_chain_get_32(i32 %124, %struct.nfsm_chain* %17, i32 %125)
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %19, align 4
  %129 = call i32 @nfsm_chain_get_32(i32 %127, %struct.nfsm_chain* %17, i32 %128)
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @nfsmout_if(i32 %130)
  %132 = load i32*, i32** %7, align 8
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %20, align 4
  %135 = xor i32 %134, -1
  %136 = and i32 %133, %135
  store i32 %136, i32* %21, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %112
  %139 = load i32, i32* %21, align 4
  %140 = load i32, i32* @NFS_ACCESS_DELETE, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load i32, i32* @NFS_ACCESS_DELETE, align 4
  %145 = load i32, i32* %19, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %19, align 4
  br label %147

147:                                              ; preds = %143, %138
  br label %148

148:                                              ; preds = %147, %112
  %149 = load i64, i64* @nfs_access_dotzfs, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %194

151:                                              ; preds = %148
  %152 = load i64, i64* @NULLVP, align 8
  store i64 %152, i64* %26, align 8
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @NISDOTZFSCHILD, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %151
  %160 = load i32, i32* @NFS_ACCESS_MODIFY, align 4
  %161 = load i32, i32* @NFS_ACCESS_EXTEND, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @NFS_ACCESS_DELETE, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* %19, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %19, align 4
  br label %186

167:                                              ; preds = %151
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %169 = call i32 @NFSTOV(%struct.TYPE_16__* %168)
  %170 = call i64 @vnode_getparent(i32 %169)
  store i64 %170, i64* %26, align 8
  %171 = load i64, i64* @NULLVP, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %185

173:                                              ; preds = %167
  %174 = load i64, i64* %26, align 8
  %175 = call %struct.TYPE_14__* @VTONFS(i64 %174)
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @NISDOTZFSCHILD, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %173
  %182 = load i32, i32* @NFS_ACCESS_DELETE, align 4
  %183 = load i32, i32* %19, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %19, align 4
  br label %185

185:                                              ; preds = %181, %173, %167
  br label %186

186:                                              ; preds = %185, %159
  %187 = load i64, i64* %26, align 8
  %188 = load i64, i64* @NULLVP, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %186
  %191 = load i64, i64* %26, align 8
  %192 = call i32 @vnode_put(i64 %191)
  br label %193

193:                                              ; preds = %190, %186
  br label %194

194:                                              ; preds = %193, %148
  %195 = load i64, i64* @nfs_access_delete, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %212

197:                                              ; preds = %194
  %198 = load i32*, i32** %7, align 8
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @NFS_ACCESS_DELETE, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %212

203:                                              ; preds = %197
  %204 = load i32, i32* %19, align 4
  %205 = load i32, i32* @NFS_ACCESS_DELETE, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %212, label %208

208:                                              ; preds = %203
  %209 = load i32, i32* @NFS_ACCESS_DELETE, align 4
  %210 = load i32, i32* %19, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %19, align 4
  br label %212

212:                                              ; preds = %208, %203, %197, %194
  %213 = load i32, i32* %10, align 4
  %214 = load i32, i32* @NFS_OP_GETATTR, align 4
  %215 = call i32 @nfsm_chain_op_check(i32 %213, %struct.nfsm_chain* %17, i32 %214)
  %216 = load i32, i32* %10, align 4
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %218 = load i32, i32* %23, align 4
  %219 = call i32 @nfsm_chain_loadattr(i32 %216, %struct.nfsm_chain* %17, %struct.TYPE_16__* %217, i32 %218, i32* %15)
  %220 = load i32, i32* %10, align 4
  %221 = call i32 @nfsmout_if(i32 %220)
  %222 = load %struct.nfsmount*, %struct.nfsmount** %22, align 8
  %223 = call i64 @nfs_mount_gone(%struct.nfsmount* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %212
  %226 = load i32, i32* @ENXIO, align 4
  store i32 %226, i32* %10, align 4
  br label %227

227:                                              ; preds = %225, %212
  %228 = load i32, i32* %10, align 4
  %229 = call i32 @nfsmout_if(i32 %228)
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = call i64 @auth_is_kerberized(i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %241, label %235

235:                                              ; preds = %227
  %236 = load %struct.nfsmount*, %struct.nfsmount** %22, align 8
  %237 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = call i64 @auth_is_kerberized(i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %235, %227
  %242 = load i32, i32* %9, align 4
  %243 = call i32 @vfs_context_ucred(i32 %242)
  %244 = call i32 @nfs_cred_getasid2uid(i32 %243)
  store i32 %244, i32* %24, align 4
  br label %249

245:                                              ; preds = %235
  %246 = load i32, i32* %9, align 4
  %247 = call i32 @vfs_context_ucred(i32 %246)
  %248 = call i32 @kauth_cred_getuid(i32 %247)
  store i32 %248, i32* %24, align 4
  br label %249

249:                                              ; preds = %245, %241
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %251 = load i32, i32* %24, align 4
  %252 = call i32 @nfs_node_access_slot(%struct.TYPE_16__* %250, i32 %251, i32 1)
  store i32 %252, i32* %14, align 4
  %253 = load i32, i32* %24, align 4
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 3
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %14, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  store i32 %253, i32* %259, align 4
  %260 = call i32 @microuptime(%struct.timeval* %18)
  %261 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 2
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* %14, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  store i32 %262, i32* %268, align 4
  %269 = load i32, i32* %19, align 4
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 1
  %272 = load i32*, i32** %271, align 8
  %273 = load i32, i32* %14, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  store i32 %269, i32* %275, align 4
  %276 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %276, i32 0, i32 1
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %14, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = load i32*, i32** %7, align 8
  store i32 %282, i32* %283, align 4
  br label %284

284:                                              ; preds = %249
  %285 = load i32, i32* %11, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %290, label %287

287:                                              ; preds = %284
  %288 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %289 = call i32 @nfs_node_unlock(%struct.TYPE_16__* %288)
  br label %290

290:                                              ; preds = %287, %284
  %291 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %16)
  %292 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %17)
  %293 = load i32, i32* %10, align 4
  store i32 %293, i32* %5, align 4
  br label %294

294:                                              ; preds = %290, %40
  %295 = load i32, i32* %5, align 4
  ret i32 %295
}

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_16__*) #1

declare dso_local i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args*, %struct.TYPE_16__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @nfsm_chain_null(%struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_build_alloc_init(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_add_compound_header(i32, %struct.nfsm_chain*, i8*, i32, i32) #1

declare dso_local i32 @nfsm_chain_add_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_add_fh(i32, %struct.nfsm_chain*, i32, i32, i32) #1

declare dso_local i32 @nfsm_chain_add_bitmap_supported(i32, %struct.nfsm_chain*, i32, %struct.nfsmount*, %struct.TYPE_16__*) #1

declare dso_local i32 @nfsm_chain_build_done(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_assert(i32, i32, i32) #1

declare dso_local i32 @nfsmout_if(i32) #1

declare dso_local i32 @nfs_request2(%struct.TYPE_16__*, i32*, %struct.nfsm_chain*, i32, i32, i32, %struct.nfsreq_secinfo_args*, i32, %struct.nfsm_chain*, i32*, i32*) #1

declare dso_local i32 @vfs_context_thread(i32) #1

declare dso_local i32 @vfs_context_ucred(i32) #1

declare dso_local i32 @nfs_node_lock(%struct.TYPE_16__*) #1

declare dso_local i32 @nfsm_chain_skip_tag(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_get_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_op_check(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i64 @vnode_getparent(i32) #1

declare dso_local i32 @NFSTOV(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_14__* @VTONFS(i64) #1

declare dso_local i32 @vnode_put(i64) #1

declare dso_local i32 @nfsm_chain_loadattr(i32, %struct.nfsm_chain*, %struct.TYPE_16__*, i32, i32*) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i64 @auth_is_kerberized(i32) #1

declare dso_local i32 @nfs_cred_getasid2uid(i32) #1

declare dso_local i32 @kauth_cred_getuid(i32) #1

declare dso_local i32 @nfs_node_access_slot(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @microuptime(%struct.timeval*) #1

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_16__*) #1

declare dso_local i32 @nfsm_chain_cleanup(%struct.nfsm_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
