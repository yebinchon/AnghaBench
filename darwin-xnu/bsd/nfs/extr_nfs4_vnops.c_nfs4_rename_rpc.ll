; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_rename_rpc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_rename_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.nfsmount = type { i32, i32 }
%struct.nfsm_chain = type { i32 }
%struct.nfsreq_secinfo_args = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@NFS_FFLAG_TRIGGER_REFERRAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NFSX_UNSIGNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@NFS_OP_PUTFH = common dso_local global i32 0, align 4
@NFS_OP_SAVEFH = common dso_local global i32 0, align 4
@NFS_OP_RENAME = common dso_local global i32 0, align 4
@NFS_OP_GETATTR = common dso_local global i32 0, align 4
@nfs_getattr_bitmap = common dso_local global i32 0, align 4
@NFS_OP_RESTOREFH = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NFSPROC4_COMPOUND = common dso_local global i32 0, align 4
@NMODIFIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_rename_rpc(%struct.TYPE_17__* %0, i8* %1, i32 %2, %struct.TYPE_17__* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.nfsmount*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.nfsm_chain, align 4
  %25 = alloca %struct.nfsm_chain, align 4
  %26 = alloca %struct.nfsreq_secinfo_args, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %27 = load i32, i32* @ENOENT, align 4
  store i32 %27, i32* %17, align 4
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %29 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_17__* %28)
  store %struct.nfsmount* %29, %struct.nfsmount** %21, align 8
  %30 = load %struct.nfsmount*, %struct.nfsmount** %21, align 8
  %31 = call i64 @nfs_mount_gone(%struct.nfsmount* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %7
  %34 = load i32, i32* @ENXIO, align 4
  store i32 %34, i32* %8, align 4
  br label %252

35:                                               ; preds = %7
  %36 = load %struct.nfsmount*, %struct.nfsmount** %21, align 8
  %37 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %19, align 4
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @NFS_FFLAG_TRIGGER_REFERRAL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %8, align 4
  br label %252

48:                                               ; preds = %35
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @NFS_FFLAG_TRIGGER_REFERRAL, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* @EINVAL, align 4
  store i32 %57, i32* %8, align 4
  br label %252

58:                                               ; preds = %48
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %60 = call i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args* %26, %struct.TYPE_17__* %59, i32* null, i32 0, i32* null, i32 0)
  %61 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %24)
  %62 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %25)
  store i32 7, i32* %20, align 4
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* @NFSX_UNSIGNED, align 4
  %65 = mul nsw i32 30, %64
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %65, %66
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %67, %68
  %70 = call i32 @nfsm_chain_build_alloc_init(i32 %63, %struct.nfsm_chain* %24, i32 %69)
  %71 = load i32, i32* %16, align 4
  %72 = load %struct.nfsmount*, %struct.nfsmount** %21, align 8
  %73 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %20, align 4
  %76 = call i32 @nfsm_chain_add_compound_header(i32 %71, %struct.nfsm_chain* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load i32, i32* %20, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %20, align 4
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* @NFS_OP_PUTFH, align 4
  %81 = call i32 @nfsm_chain_add_32(i32 %79, %struct.nfsm_chain* %24, i32 %80)
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %19, align 4
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @nfsm_chain_add_fh(i32 %82, %struct.nfsm_chain* %24, i32 %83, i32 %86, i32 %89)
  %91 = load i32, i32* %20, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %20, align 4
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* @NFS_OP_SAVEFH, align 4
  %95 = call i32 @nfsm_chain_add_32(i32 %93, %struct.nfsm_chain* %24, i32 %94)
  %96 = load i32, i32* %20, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %20, align 4
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* @NFS_OP_PUTFH, align 4
  %100 = call i32 @nfsm_chain_add_32(i32 %98, %struct.nfsm_chain* %24, i32 %99)
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %19, align 4
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @nfsm_chain_add_fh(i32 %101, %struct.nfsm_chain* %24, i32 %102, i32 %105, i32 %108)
  %110 = load i32, i32* %20, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %20, align 4
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* @NFS_OP_RENAME, align 4
  %114 = call i32 @nfsm_chain_add_32(i32 %112, %struct.nfsm_chain* %24, i32 %113)
  %115 = load i32, i32* %16, align 4
  %116 = load i8*, i8** %10, align 8
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.nfsmount*, %struct.nfsmount** %21, align 8
  %119 = call i32 @nfsm_chain_add_name(i32 %115, %struct.nfsm_chain* %24, i8* %116, i32 %117, %struct.nfsmount* %118)
  %120 = load i32, i32* %16, align 4
  %121 = load i8*, i8** %13, align 8
  %122 = load i32, i32* %14, align 4
  %123 = load %struct.nfsmount*, %struct.nfsmount** %21, align 8
  %124 = call i32 @nfsm_chain_add_name(i32 %120, %struct.nfsm_chain* %24, i8* %121, i32 %122, %struct.nfsmount* %123)
  %125 = load i32, i32* %20, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %20, align 4
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* @NFS_OP_GETATTR, align 4
  %129 = call i32 @nfsm_chain_add_32(i32 %127, %struct.nfsm_chain* %24, i32 %128)
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* @nfs_getattr_bitmap, align 4
  %132 = load %struct.nfsmount*, %struct.nfsmount** %21, align 8
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %134 = call i32 @nfsm_chain_add_bitmap_supported(i32 %130, %struct.nfsm_chain* %24, i32 %131, %struct.nfsmount* %132, %struct.TYPE_17__* %133)
  %135 = load i32, i32* %20, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %20, align 4
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* @NFS_OP_RESTOREFH, align 4
  %139 = call i32 @nfsm_chain_add_32(i32 %137, %struct.nfsm_chain* %24, i32 %138)
  %140 = load i32, i32* %20, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %20, align 4
  %142 = load i32, i32* %16, align 4
  %143 = load i32, i32* @NFS_OP_GETATTR, align 4
  %144 = call i32 @nfsm_chain_add_32(i32 %142, %struct.nfsm_chain* %24, i32 %143)
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* @nfs_getattr_bitmap, align 4
  %147 = load %struct.nfsmount*, %struct.nfsmount** %21, align 8
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %149 = call i32 @nfsm_chain_add_bitmap_supported(i32 %145, %struct.nfsm_chain* %24, i32 %146, %struct.nfsmount* %147, %struct.TYPE_17__* %148)
  %150 = load i32, i32* %16, align 4
  %151 = call i32 @nfsm_chain_build_done(i32 %150, %struct.nfsm_chain* %24)
  %152 = load i32, i32* %16, align 4
  %153 = load i32, i32* %20, align 4
  %154 = icmp eq i32 %153, 0
  %155 = zext i1 %154 to i32
  %156 = load i32, i32* @EPROTO, align 4
  %157 = call i32 @nfsm_assert(i32 %152, i32 %155, i32 %156)
  %158 = load i32, i32* %16, align 4
  %159 = call i32 @nfsmout_if(i32 %158)
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %161 = load i32, i32* @NFSPROC4_COMPOUND, align 4
  %162 = load i32, i32* %15, align 4
  %163 = call i32 @nfs_request(%struct.TYPE_17__* %160, i32* null, %struct.nfsm_chain* %24, i32 %161, i32 %162, %struct.nfsreq_secinfo_args* %26, %struct.nfsm_chain* %25, i32* %22, i32* %18)
  store i32 %163, i32* %16, align 4
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %166 = call i32 @nfs_node_lock2(%struct.TYPE_17__* %164, %struct.TYPE_17__* %165)
  store i32 %166, i32* %17, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %58
  %169 = load i32, i32* %17, align 4
  store i32 %169, i32* %16, align 4
  br label %170

170:                                              ; preds = %168, %58
  %171 = load i32, i32* %16, align 4
  %172 = call i32 @nfsm_chain_skip_tag(i32 %171, %struct.nfsm_chain* %25)
  %173 = load i32, i32* %16, align 4
  %174 = load i32, i32* %20, align 4
  %175 = call i32 @nfsm_chain_get_32(i32 %173, %struct.nfsm_chain* %25, i32 %174)
  %176 = load i32, i32* %16, align 4
  %177 = load i32, i32* @NFS_OP_PUTFH, align 4
  %178 = call i32 @nfsm_chain_op_check(i32 %176, %struct.nfsm_chain* %25, i32 %177)
  %179 = load i32, i32* %16, align 4
  %180 = load i32, i32* @NFS_OP_SAVEFH, align 4
  %181 = call i32 @nfsm_chain_op_check(i32 %179, %struct.nfsm_chain* %25, i32 %180)
  %182 = load i32, i32* %16, align 4
  %183 = load i32, i32* @NFS_OP_PUTFH, align 4
  %184 = call i32 @nfsm_chain_op_check(i32 %182, %struct.nfsm_chain* %25, i32 %183)
  %185 = load i32, i32* %16, align 4
  %186 = load i32, i32* @NFS_OP_RENAME, align 4
  %187 = call i32 @nfsm_chain_op_check(i32 %185, %struct.nfsm_chain* %25, i32 %186)
  %188 = load i32, i32* %16, align 4
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %190 = call i32 @nfsm_chain_check_change_info(i32 %188, %struct.nfsm_chain* %25, %struct.TYPE_17__* %189)
  %191 = load i32, i32* %16, align 4
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %193 = call i32 @nfsm_chain_check_change_info(i32 %191, %struct.nfsm_chain* %25, %struct.TYPE_17__* %192)
  %194 = load i32, i32* %16, align 4
  %195 = load i32, i32* @NFS_OP_GETATTR, align 4
  %196 = call i32 @nfsm_chain_op_check(i32 %194, %struct.nfsm_chain* %25, i32 %195)
  %197 = load i32, i32* %22, align 4
  store i32 %197, i32* %23, align 4
  %198 = load i32, i32* %16, align 4
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %200 = load i32, i32* %19, align 4
  %201 = call i32 @nfsm_chain_loadattr(i32 %198, %struct.nfsm_chain* %25, %struct.TYPE_17__* %199, i32 %200, i32* %22)
  %202 = load i32, i32* %16, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %170
  %205 = load i32, i32* %17, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %204
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %209 = call i32 @NATTRINVALIDATE(%struct.TYPE_17__* %208)
  br label %210

210:                                              ; preds = %207, %204, %170
  %211 = load i32, i32* %16, align 4
  %212 = load i32, i32* @NFS_OP_RESTOREFH, align 4
  %213 = call i32 @nfsm_chain_op_check(i32 %211, %struct.nfsm_chain* %25, i32 %212)
  %214 = load i32, i32* %16, align 4
  %215 = load i32, i32* @NFS_OP_GETATTR, align 4
  %216 = call i32 @nfsm_chain_op_check(i32 %214, %struct.nfsm_chain* %25, i32 %215)
  %217 = load i32, i32* %23, align 4
  store i32 %217, i32* %22, align 4
  %218 = load i32, i32* %16, align 4
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %220 = load i32, i32* %19, align 4
  %221 = call i32 @nfsm_chain_loadattr(i32 %218, %struct.nfsm_chain* %25, %struct.TYPE_17__* %219, i32 %220, i32* %22)
  %222 = load i32, i32* %16, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %210
  %225 = load i32, i32* %17, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %230, label %227

227:                                              ; preds = %224
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %229 = call i32 @NATTRINVALIDATE(%struct.TYPE_17__* %228)
  br label %230

230:                                              ; preds = %227, %224, %210
  br label %231

231:                                              ; preds = %230
  %232 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %24)
  %233 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %25)
  %234 = load i32, i32* %17, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %250, label %236

236:                                              ; preds = %231
  %237 = load i32, i32* @NMODIFIED, align 4
  %238 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = or i32 %240, %237
  store i32 %241, i32* %239, align 4
  %242 = load i32, i32* @NMODIFIED, align 4
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = or i32 %245, %242
  store i32 %246, i32* %244, align 4
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %249 = call i32 @nfs_node_unlock2(%struct.TYPE_17__* %247, %struct.TYPE_17__* %248)
  br label %250

250:                                              ; preds = %236, %231
  %251 = load i32, i32* %16, align 4
  store i32 %251, i32* %8, align 4
  br label %252

252:                                              ; preds = %250, %56, %46, %33
  %253 = load i32, i32* %8, align 4
  ret i32 %253
}

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_17__*) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args*, %struct.TYPE_17__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @nfsm_chain_null(%struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_build_alloc_init(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_add_compound_header(i32, %struct.nfsm_chain*, i8*, i32, i32) #1

declare dso_local i32 @nfsm_chain_add_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_add_fh(i32, %struct.nfsm_chain*, i32, i32, i32) #1

declare dso_local i32 @nfsm_chain_add_name(i32, %struct.nfsm_chain*, i8*, i32, %struct.nfsmount*) #1

declare dso_local i32 @nfsm_chain_add_bitmap_supported(i32, %struct.nfsm_chain*, i32, %struct.nfsmount*, %struct.TYPE_17__*) #1

declare dso_local i32 @nfsm_chain_build_done(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_assert(i32, i32, i32) #1

declare dso_local i32 @nfsmout_if(i32) #1

declare dso_local i32 @nfs_request(%struct.TYPE_17__*, i32*, %struct.nfsm_chain*, i32, i32, %struct.nfsreq_secinfo_args*, %struct.nfsm_chain*, i32*, i32*) #1

declare dso_local i32 @nfs_node_lock2(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @nfsm_chain_skip_tag(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_get_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_op_check(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_check_change_info(i32, %struct.nfsm_chain*, %struct.TYPE_17__*) #1

declare dso_local i32 @nfsm_chain_loadattr(i32, %struct.nfsm_chain*, %struct.TYPE_17__*, i32, i32*) #1

declare dso_local i32 @NATTRINVALIDATE(%struct.TYPE_17__*) #1

declare dso_local i32 @nfsm_chain_cleanup(%struct.nfsm_chain*) #1

declare dso_local i32 @nfs_node_unlock2(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
