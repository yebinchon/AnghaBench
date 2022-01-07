; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_setattr_rpc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_setattr_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32, %struct.TYPE_18__, i32, i32 }
%struct.TYPE_18__ = type { i32, i64, i64, i32, i32 }
%struct.vnode_attr = type { i32, i32, i64, i64, i32, i32 }
%struct.nfsmount = type { i32, i32 }
%struct.nfsm_chain = type { i32 }
%struct.TYPE_20__ = type { i64*, i64 }
%struct.nfsreq_secinfo_args = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@NFS_ATTR_BITMAP_LEN = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@NFS_FFLAG_TRIGGER_REFERRAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@va_flags = common dso_local global i32 0, align 4
@SF_ARCHIVED = common dso_local global i32 0, align 4
@UF_HIDDEN = common dso_local global i32 0, align 4
@VNODE_ATTR_va_flags = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@va_uid = common dso_local global i32 0, align 4
@va_gid = common dso_local global i32 0, align 4
@va_uuuid = common dso_local global i32 0, align 4
@va_guuid = common dso_local global i32 0, align 4
@nfs_getattr_bitmap = common dso_local global i32 0, align 4
@NFS_FATTR_ACL = common dso_local global i32 0, align 4
@NFS_FATTR_MODE = common dso_local global i32 0, align 4
@NFSX_UNSIGNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"setattr\00", align 1
@NFS_OP_PUTFH = common dso_local global i32 0, align 4
@NFS_OP_SETATTR = common dso_local global i32 0, align 4
@va_data_size = common dso_local global i32 0, align 4
@NFS_OP_GETATTR = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NFSPROC4_COMPOUND = common dso_local global i32 0, align 4
@EBADRPC = common dso_local global i32 0, align 4
@NFS_FFLAG_IS_ATTR = common dso_local global i32 0, align 4
@va_acl = common dso_local global i32 0, align 4
@va_mode = common dso_local global i32 0, align 4
@ACLONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_setattr_rpc(%struct.TYPE_19__* %0, %struct.vnode_attr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.vnode_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfsmount*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.nfsm_chain, align 4
  %18 = alloca %struct.nfsm_chain, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_20__, align 8
  %25 = alloca %struct.nfsreq_secinfo_args, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.vnode_attr* %1, %struct.vnode_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %28 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_19__* %27)
  store %struct.nfsmount* %28, %struct.nfsmount** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %29 = load i32, i32* @ENOENT, align 4
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* @NFS_ATTR_BITMAP_LEN, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %19, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %20, align 8
  %34 = load i32, i32* @NFS_ATTR_BITMAP_LEN, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %22, align 8
  %37 = load i32, i32* @NFS_ATTR_BITMAP_LEN, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca i32, i64 %38, align 16
  store i64 %38, i64* %23, align 8
  %40 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %41 = call i64 @nfs_mount_gone(%struct.nfsmount* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %3
  %44 = load i32, i32* @ENXIO, align 4
  store i32 %44, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %406

45:                                               ; preds = %3
  %46 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %47 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %13, align 4
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @NFS_FFLAG_TRIGGER_REFERRAL, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load i32, i32* @EINVAL, align 4
  store i32 %57, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %406

58:                                               ; preds = %45
  %59 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %60 = load i32, i32* @va_flags, align 4
  %61 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %58
  %64 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %65 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @SF_ARCHIVED, align 4
  %68 = load i32, i32* @UF_HIDDEN, align 4
  %69 = or i32 %67, %68
  %70 = xor i32 %69, -1
  %71 = and i32 %66, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %63
  %74 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %75 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @VNODE_ATTR_va_flags, align 4
  %78 = xor i32 %77, -1
  %79 = and i32 %76, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i32, i32* @EINVAL, align 4
  store i32 %82, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %406

83:                                               ; preds = %73
  %84 = load i32, i32* @ENOTSUP, align 4
  store i32 %84, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %406

85:                                               ; preds = %63, %58
  %86 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %87 = load i32, i32* @va_uid, align 4
  %88 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %85
  %91 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %92 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %93, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %90
  %100 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %101 = load i32, i32* @va_uid, align 4
  %102 = call i32 @VATTR_CLEAR_ACTIVE(%struct.vnode_attr* %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %90, %85
  %104 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %105 = load i32, i32* @va_gid, align 4
  %106 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %103
  %109 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %110 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %111, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %108
  %118 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %119 = load i32, i32* @va_gid, align 4
  %120 = call i32 @VATTR_CLEAR_ACTIVE(%struct.vnode_attr* %118, i32 %119)
  br label %121

121:                                              ; preds = %117, %108, %103
  %122 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %123 = load i32, i32* @va_uuuid, align 4
  %124 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %121
  %127 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %128 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %127, i32 0, i32 5
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 4
  %132 = call i64 @kauth_guid_equal(i32* %128, i32* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %126
  %135 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %136 = load i32, i32* @va_uuuid, align 4
  %137 = call i32 @VATTR_CLEAR_ACTIVE(%struct.vnode_attr* %135, i32 %136)
  br label %138

138:                                              ; preds = %134, %126, %121
  %139 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %140 = load i32, i32* @va_guuid, align 4
  %141 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %139, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %138
  %144 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %145 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %144, i32 0, i32 4
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 3
  %149 = call i64 @kauth_guid_equal(i32* %145, i32* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %143
  %152 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %153 = load i32, i32* @va_guuid, align 4
  %154 = call i32 @VATTR_CLEAR_ACTIVE(%struct.vnode_attr* %152, i32 %153)
  br label %155

155:                                              ; preds = %151, %143, %138
  br label %156

156:                                              ; preds = %399, %155
  %157 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %158 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %159 = call i32 @nfs_vattr_set_bitmap(%struct.nfsmount* %157, i32* %33, %struct.vnode_attr* %158)
  %160 = getelementptr inbounds i32, i32* %33, i64 0
  %161 = load i32, i32* %160, align 16
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %156
  %164 = getelementptr inbounds i32, i32* %33, i64 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %163
  store i32 0, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %406

168:                                              ; preds = %163, %156
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %170 = call i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args* %25, %struct.TYPE_19__* %169, i32* null, i32 0, i32* null, i32 0)
  %171 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %17)
  %172 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %18)
  %173 = load i32, i32* @nfs_getattr_bitmap, align 4
  %174 = call i32 @NFS_COPY_ATTRIBUTES(i32 %173, i32* %36)
  %175 = load i32, i32* @NFS_FATTR_ACL, align 4
  %176 = call i64 @NFS_BITMAP_ISSET(i32* %33, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %168
  %179 = load i32, i32* @NFS_FATTR_MODE, align 4
  %180 = call i64 @NFS_BITMAP_ISSET(i32* %33, i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %192

182:                                              ; preds = %178, %168
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %184 = call i64 @NACLVALID(%struct.TYPE_19__* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %182
  %187 = load i32, i32* @NFS_FATTR_ACL, align 4
  %188 = call i32 @NFS_BITMAP_SET(i32* %36, i32 %187)
  br label %189

189:                                              ; preds = %186, %182
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %191 = call i32 @NACLINVALIDATE(%struct.TYPE_19__* %190)
  br label %192

192:                                              ; preds = %189, %178
  store i32 3, i32* %14, align 4
  %193 = load i32, i32* %9, align 4
  %194 = load i32, i32* @NFSX_UNSIGNED, align 4
  %195 = mul nsw i32 40, %194
  %196 = call i32 @nfsm_chain_build_alloc_init(i32 %193, %struct.nfsm_chain* %17, i32 %195)
  %197 = load i32, i32* %9, align 4
  %198 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %199 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %14, align 4
  %202 = call i32 @nfsm_chain_add_compound_header(i32 %197, %struct.nfsm_chain* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %200, i32 %201)
  %203 = load i32, i32* %14, align 4
  %204 = add nsw i32 %203, -1
  store i32 %204, i32* %14, align 4
  %205 = load i32, i32* %9, align 4
  %206 = load i32, i32* @NFS_OP_PUTFH, align 4
  %207 = call i32 @nfsm_chain_add_32(i32 %205, %struct.nfsm_chain* %17, i32 %206)
  %208 = load i32, i32* %9, align 4
  %209 = load i32, i32* %13, align 4
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @nfsm_chain_add_fh(i32 %208, %struct.nfsm_chain* %17, i32 %209, i32 %212, i32 %215)
  %217 = load i32, i32* %14, align 4
  %218 = add nsw i32 %217, -1
  store i32 %218, i32* %14, align 4
  %219 = load i32, i32* %9, align 4
  %220 = load i32, i32* @NFS_OP_SETATTR, align 4
  %221 = call i32 @nfsm_chain_add_32(i32 %219, %struct.nfsm_chain* %17, i32 %220)
  %222 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %223 = load i32, i32* @va_data_size, align 4
  %224 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %222, i32 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %233

226:                                              ; preds = %192
  %227 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %228 = load i32, i32* %7, align 4
  %229 = call i32 @vfs_context_thread(i32 %228)
  %230 = load i32, i32* %7, align 4
  %231 = call i32 @vfs_context_ucred(i32 %230)
  %232 = call i32 @nfs_get_stateid(%struct.TYPE_19__* %227, i32 %229, i32 %231, %struct.TYPE_20__* %24)
  br label %244

233:                                              ; preds = %192
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %235 = load i64*, i64** %234, align 8
  %236 = getelementptr inbounds i64, i64* %235, i64 2
  store i64 0, i64* %236, align 8
  %237 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %238 = load i64*, i64** %237, align 8
  %239 = getelementptr inbounds i64, i64* %238, i64 1
  store i64 0, i64* %239, align 8
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %241 = load i64*, i64** %240, align 8
  %242 = getelementptr inbounds i64, i64* %241, i64 0
  store i64 0, i64* %242, align 8
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 1
  store i64 0, i64* %243, align 8
  br label %244

244:                                              ; preds = %233, %226
  %245 = load i32, i32* %9, align 4
  %246 = call i32 @nfsm_chain_add_stateid(i32 %245, %struct.nfsm_chain* %17, %struct.TYPE_20__* %24)
  %247 = load i32, i32* %9, align 4
  %248 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %249 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %250 = call i32 @nfsm_chain_add_fattr4(i32 %247, %struct.nfsm_chain* %17, %struct.vnode_attr* %248, %struct.nfsmount* %249)
  %251 = load i32, i32* %14, align 4
  %252 = add nsw i32 %251, -1
  store i32 %252, i32* %14, align 4
  %253 = load i32, i32* %9, align 4
  %254 = load i32, i32* @NFS_OP_GETATTR, align 4
  %255 = call i32 @nfsm_chain_add_32(i32 %253, %struct.nfsm_chain* %17, i32 %254)
  %256 = load i32, i32* %9, align 4
  %257 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %258 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %259 = call i32 @nfsm_chain_add_bitmap_supported(i32 %256, %struct.nfsm_chain* %17, i32* %36, %struct.nfsmount* %257, %struct.TYPE_19__* %258)
  %260 = load i32, i32* %9, align 4
  %261 = call i32 @nfsm_chain_build_done(i32 %260, %struct.nfsm_chain* %17)
  %262 = load i32, i32* %9, align 4
  %263 = load i32, i32* %14, align 4
  %264 = icmp eq i32 %263, 0
  %265 = zext i1 %264 to i32
  %266 = load i32, i32* @EPROTO, align 4
  %267 = call i32 @nfsm_assert(i32 %262, i32 %265, i32 %266)
  %268 = load i32, i32* %9, align 4
  %269 = call i32 @nfsmout_if(i32 %268)
  %270 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %271 = load i32, i32* @NFSPROC4_COMPOUND, align 4
  %272 = load i32, i32* %7, align 4
  %273 = call i32 @nfs_request(%struct.TYPE_19__* %270, i32* null, %struct.nfsm_chain* %17, i32 %271, i32 %272, %struct.nfsreq_secinfo_args* %25, %struct.nfsm_chain* %18, i64* %15, i32* %12)
  store i32 %273, i32* %9, align 4
  %274 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %275 = call i32 @nfs_node_lock(%struct.TYPE_19__* %274)
  store i32 %275, i32* %11, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %244
  %278 = load i32, i32* %11, align 4
  store i32 %278, i32* %9, align 4
  br label %279

279:                                              ; preds = %277, %244
  %280 = load i32, i32* %9, align 4
  %281 = call i32 @nfsm_chain_skip_tag(i32 %280, %struct.nfsm_chain* %18)
  %282 = load i32, i32* %9, align 4
  %283 = load i32, i32* %14, align 4
  %284 = call i32 @nfsm_chain_get_32(i32 %282, %struct.nfsm_chain* %18, i32 %283)
  %285 = load i32, i32* %9, align 4
  %286 = load i32, i32* @NFS_OP_PUTFH, align 4
  %287 = call i32 @nfsm_chain_op_check(i32 %285, %struct.nfsm_chain* %18, i32 %286)
  %288 = load i32, i32* %9, align 4
  %289 = call i32 @nfsmout_if(i32 %288)
  %290 = load i32, i32* %9, align 4
  %291 = load i32, i32* @NFS_OP_SETATTR, align 4
  %292 = call i32 @nfsm_chain_op_check(i32 %290, %struct.nfsm_chain* %18, i32 %291)
  %293 = load i32, i32* %9, align 4
  %294 = load i32, i32* @EBADRPC, align 4
  %295 = icmp eq i32 %293, %294
  %296 = zext i1 %295 to i32
  %297 = call i32 @nfsmout_if(i32 %296)
  %298 = load i32, i32* %9, align 4
  store i32 %298, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %299 = load i32, i32* @NFS_ATTR_BITMAP_LEN, align 4
  store i32 %299, i32* %21, align 4
  %300 = load i32, i32* %9, align 4
  %301 = load i32, i32* %21, align 4
  %302 = call i32 @nfsm_chain_get_bitmap(i32 %300, %struct.nfsm_chain* %18, i32* %39, i32 %301)
  %303 = load i32, i32* %9, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %326, label %305

305:                                              ; preds = %279
  %306 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %307 = load i32, i32* @va_data_size, align 4
  %308 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %306, i32 %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %322

310:                                              ; preds = %305
  %311 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %311, i32 0, i32 2
  %313 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @NFS_FFLAG_IS_ATTR, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %322

318:                                              ; preds = %310
  %319 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %319, i32 0, i32 1
  %321 = call i32 @microuptime(i32* %320)
  br label %322

322:                                              ; preds = %318, %310, %305
  %323 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %324 = call i32 @nfs_vattr_set_supported(i32* %39, %struct.vnode_attr* %323)
  %325 = load i32, i32* %10, align 4
  store i32 %325, i32* %9, align 4
  br label %326

326:                                              ; preds = %322, %279
  %327 = load i32, i32* %9, align 4
  %328 = load i32, i32* @NFS_OP_GETATTR, align 4
  %329 = call i32 @nfsm_chain_op_check(i32 %327, %struct.nfsm_chain* %18, i32 %328)
  %330 = load i32, i32* %9, align 4
  %331 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %332 = load i32, i32* %13, align 4
  %333 = call i32 @nfsm_chain_loadattr(i32 %330, %struct.nfsm_chain* %18, %struct.TYPE_19__* %331, i32 %332, i64* %15)
  %334 = load i32, i32* %9, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %339

336:                                              ; preds = %326
  %337 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %338 = call i32 @NATTRINVALIDATE(%struct.TYPE_19__* %337)
  br label %339

339:                                              ; preds = %336, %326
  store i64 0, i64* %16, align 8
  %340 = call i32 @nfs_get_xid(i64* %16)
  %341 = load i64, i64* %16, align 8
  %342 = load i64, i64* %15, align 8
  %343 = add nsw i64 %342, 1
  %344 = icmp ne i64 %341, %343
  br i1 %344, label %345, label %351

345:                                              ; preds = %339
  %346 = load i64, i64* %16, align 8
  %347 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %347, i32 0, i32 0
  store i64 %346, i64* %348, align 8
  %349 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %350 = call i32 @NATTRINVALIDATE(%struct.TYPE_19__* %349)
  br label %351

351:                                              ; preds = %345, %339
  br label %352

352:                                              ; preds = %351
  %353 = load i32, i32* %11, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %358, label %355

355:                                              ; preds = %352
  %356 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %357 = call i32 @nfs_node_unlock(%struct.TYPE_19__* %356)
  br label %358

358:                                              ; preds = %355, %352
  %359 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %17)
  %360 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %18)
  %361 = load i32, i32* %10, align 4
  %362 = load i32, i32* @EINVAL, align 4
  %363 = icmp eq i32 %361, %362
  br i1 %363, label %364, label %404

364:                                              ; preds = %358
  %365 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %366 = load i32, i32* @va_acl, align 4
  %367 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %365, i32 %366)
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %404

369:                                              ; preds = %364
  %370 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %371 = load i32, i32* @va_mode, align 4
  %372 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %370, i32 %371)
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %374, label %404

374:                                              ; preds = %369
  %375 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %376 = load i32, i32* @ACLONLY, align 4
  %377 = call i32 @NMFLAG(%struct.nfsmount* %375, i32 %376)
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %404, label %379

379:                                              ; preds = %374
  %380 = getelementptr inbounds i32, i32* %33, i64 0
  %381 = load i32, i32* %380, align 16
  %382 = getelementptr inbounds i32, i32* %39, i64 0
  %383 = load i32, i32* %382, align 16
  %384 = and i32 %381, %383
  %385 = getelementptr inbounds i32, i32* %33, i64 0
  %386 = load i32, i32* %385, align 16
  %387 = icmp ne i32 %384, %386
  br i1 %387, label %399, label %388

388:                                              ; preds = %379
  %389 = getelementptr inbounds i32, i32* %33, i64 1
  %390 = load i32, i32* %389, align 4
  %391 = getelementptr inbounds i32, i32* %39, i64 1
  %392 = load i32, i32* %391, align 4
  %393 = load i32, i32* @NFS_FATTR_MODE, align 4
  %394 = or i32 %392, %393
  %395 = and i32 %390, %394
  %396 = getelementptr inbounds i32, i32* %33, i64 1
  %397 = load i32, i32* %396, align 4
  %398 = icmp ne i32 %395, %397
  br i1 %398, label %399, label %403

399:                                              ; preds = %388, %379
  %400 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %401 = load i32, i32* @va_mode, align 4
  %402 = call i32 @VATTR_CLEAR_ACTIVE(%struct.vnode_attr* %400, i32 %401)
  store i32 0, i32* %9, align 4
  br label %156

403:                                              ; preds = %388
  br label %404

404:                                              ; preds = %403, %374, %369, %364, %358
  %405 = load i32, i32* %9, align 4
  store i32 %405, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %406

406:                                              ; preds = %404, %167, %83, %81, %56, %43
  %407 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %407)
  %408 = load i32, i32* %4, align 4
  ret i32 %408
}

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_19__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i64 @VATTR_IS_ACTIVE(%struct.vnode_attr*, i32) #1

declare dso_local i32 @VATTR_CLEAR_ACTIVE(%struct.vnode_attr*, i32) #1

declare dso_local i64 @kauth_guid_equal(i32*, i32*) #1

declare dso_local i32 @nfs_vattr_set_bitmap(%struct.nfsmount*, i32*, %struct.vnode_attr*) #1

declare dso_local i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args*, %struct.TYPE_19__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @nfsm_chain_null(%struct.nfsm_chain*) #1

declare dso_local i32 @NFS_COPY_ATTRIBUTES(i32, i32*) #1

declare dso_local i64 @NFS_BITMAP_ISSET(i32*, i32) #1

declare dso_local i64 @NACLVALID(%struct.TYPE_19__*) #1

declare dso_local i32 @NFS_BITMAP_SET(i32*, i32) #1

declare dso_local i32 @NACLINVALIDATE(%struct.TYPE_19__*) #1

declare dso_local i32 @nfsm_chain_build_alloc_init(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_add_compound_header(i32, %struct.nfsm_chain*, i8*, i32, i32) #1

declare dso_local i32 @nfsm_chain_add_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_add_fh(i32, %struct.nfsm_chain*, i32, i32, i32) #1

declare dso_local i32 @nfs_get_stateid(%struct.TYPE_19__*, i32, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @vfs_context_thread(i32) #1

declare dso_local i32 @vfs_context_ucred(i32) #1

declare dso_local i32 @nfsm_chain_add_stateid(i32, %struct.nfsm_chain*, %struct.TYPE_20__*) #1

declare dso_local i32 @nfsm_chain_add_fattr4(i32, %struct.nfsm_chain*, %struct.vnode_attr*, %struct.nfsmount*) #1

declare dso_local i32 @nfsm_chain_add_bitmap_supported(i32, %struct.nfsm_chain*, i32*, %struct.nfsmount*, %struct.TYPE_19__*) #1

declare dso_local i32 @nfsm_chain_build_done(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_assert(i32, i32, i32) #1

declare dso_local i32 @nfsmout_if(i32) #1

declare dso_local i32 @nfs_request(%struct.TYPE_19__*, i32*, %struct.nfsm_chain*, i32, i32, %struct.nfsreq_secinfo_args*, %struct.nfsm_chain*, i64*, i32*) #1

declare dso_local i32 @nfs_node_lock(%struct.TYPE_19__*) #1

declare dso_local i32 @nfsm_chain_skip_tag(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_get_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_op_check(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_get_bitmap(i32, %struct.nfsm_chain*, i32*, i32) #1

declare dso_local i32 @microuptime(i32*) #1

declare dso_local i32 @nfs_vattr_set_supported(i32*, %struct.vnode_attr*) #1

declare dso_local i32 @nfsm_chain_loadattr(i32, %struct.nfsm_chain*, %struct.TYPE_19__*, i32, i64*) #1

declare dso_local i32 @NATTRINVALIDATE(%struct.TYPE_19__*) #1

declare dso_local i32 @nfs_get_xid(i64*) #1

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_19__*) #1

declare dso_local i32 @nfsm_chain_cleanup(%struct.nfsm_chain*) #1

declare dso_local i32 @NMFLAG(%struct.nfsmount*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
