; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_vnop_link.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_vnop_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_link_args = type { %struct.componentname*, i32, i32, i32 }
%struct.componentname = type { i64, i32 }
%struct.nfsmount = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.nfsm_chain = type { i32 }
%struct.nfsreq_secinfo_args = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@NFS_FFLAG_TRIGGER_REFERRAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MNT_WAIT = common dso_local global i32 0, align 4
@V_IGNORE_WRITEERR = common dso_local global i32 0, align 4
@NFSX_UNSIGNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"link\00", align 1
@NFS_OP_PUTFH = common dso_local global i32 0, align 4
@NFS_OP_SAVEFH = common dso_local global i32 0, align 4
@NFS_OP_LINK = common dso_local global i32 0, align 4
@NFS_OP_GETATTR = common dso_local global i32 0, align 4
@nfs_getattr_bitmap = common dso_local global i32 0, align 4
@NFS_OP_RESTOREFH = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NFSPROC4_COMPOUND = common dso_local global i32 0, align 4
@NMODIFIED = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@NNEGNCENTRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_vnop_link(%struct.vnop_link_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_link_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.componentname*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nfsmount*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.nfsm_chain, align 4
  %19 = alloca %struct.nfsm_chain, align 4
  %20 = alloca %struct.nfsreq_secinfo_args, align 4
  store %struct.vnop_link_args* %0, %struct.vnop_link_args** %3, align 8
  %21 = load %struct.vnop_link_args*, %struct.vnop_link_args** %3, align 8
  %22 = getelementptr inbounds %struct.vnop_link_args, %struct.vnop_link_args* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %4, align 4
  %24 = load %struct.vnop_link_args*, %struct.vnop_link_args** %3, align 8
  %25 = getelementptr inbounds %struct.vnop_link_args, %struct.vnop_link_args* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %5, align 4
  %27 = load %struct.vnop_link_args*, %struct.vnop_link_args** %3, align 8
  %28 = getelementptr inbounds %struct.vnop_link_args, %struct.vnop_link_args* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %6, align 4
  %30 = load %struct.vnop_link_args*, %struct.vnop_link_args** %3, align 8
  %31 = getelementptr inbounds %struct.vnop_link_args, %struct.vnop_link_args* %30, i32 0, i32 0
  %32 = load %struct.componentname*, %struct.componentname** %31, align 8
  store %struct.componentname* %32, %struct.componentname** %7, align 8
  store i32 0, i32* %8, align 4
  %33 = load i32, i32* @ENOENT, align 4
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call %struct.TYPE_20__* @VTONFS(i32 %34)
  store %struct.TYPE_20__* %35, %struct.TYPE_20__** %12, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call %struct.TYPE_20__* @VTONFS(i32 %36)
  store %struct.TYPE_20__* %37, %struct.TYPE_20__** %13, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @vnode_mount(i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @vnode_mount(i32 %40)
  %42 = icmp ne i64 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %1
  %44 = load i32, i32* @EXDEV, align 4
  store i32 %44, i32* %2, align 4
  br label %302

45:                                               ; preds = %1
  %46 = load i32, i32* %5, align 4
  %47 = call %struct.nfsmount* @VTONMP(i32 %46)
  store %struct.nfsmount* %47, %struct.nfsmount** %11, align 8
  %48 = load %struct.nfsmount*, %struct.nfsmount** %11, align 8
  %49 = call i64 @nfs_mount_gone(%struct.nfsmount* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @ENXIO, align 4
  store i32 %52, i32* %2, align 4
  br label %302

53:                                               ; preds = %45
  %54 = load %struct.nfsmount*, %struct.nfsmount** %11, align 8
  %55 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %14, align 4
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @NFS_FFLAG_TRIGGER_REFERRAL, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %2, align 4
  br label %302

66:                                               ; preds = %53
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @NFS_FFLAG_TRIGGER_REFERRAL, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* @EINVAL, align 4
  store i32 %75, i32* %2, align 4
  br label %302

76:                                               ; preds = %66
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %78 = load i32, i32* @MNT_WAIT, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @vfs_context_thread(i32 %79)
  %81 = load i32, i32* @V_IGNORE_WRITEERR, align 4
  %82 = call i32 @nfs_flush(%struct.TYPE_20__* %77, i32 %78, i32 %80, i32 %81)
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @vfs_context_thread(i32 %85)
  %87 = call i32 @nfs_node_set_busy2(%struct.TYPE_20__* %83, %struct.TYPE_20__* %84, i32 %86)
  store i32 %87, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %76
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %2, align 4
  br label %302

91:                                               ; preds = %76
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %93 = call i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args* %20, %struct.TYPE_20__* %92, i32* null, i32 0, i32* null, i32 0)
  %94 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %18)
  %95 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %19)
  store i32 7, i32* %15, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @NFSX_UNSIGNED, align 4
  %98 = mul nsw i32 29, %97
  %99 = sext i32 %98 to i64
  %100 = load %struct.componentname*, %struct.componentname** %7, align 8
  %101 = getelementptr inbounds %struct.componentname, %struct.componentname* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %99, %102
  %104 = call i32 @nfsm_chain_build_alloc_init(i32 %96, %struct.nfsm_chain* %18, i64 %103)
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.nfsmount*, %struct.nfsmount** %11, align 8
  %107 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %15, align 4
  %110 = call i32 @nfsm_chain_add_compound_header(i32 %105, %struct.nfsm_chain* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %108, i32 %109)
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %15, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @NFS_OP_PUTFH, align 4
  %115 = call i32 @nfsm_chain_add_32(i32 %113, %struct.nfsm_chain* %18, i32 %114)
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %14, align 4
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @nfsm_chain_add_fh(i32 %116, %struct.nfsm_chain* %18, i32 %117, i32 %120, i32 %123)
  %125 = load i32, i32* %15, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %15, align 4
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @NFS_OP_SAVEFH, align 4
  %129 = call i32 @nfsm_chain_add_32(i32 %127, %struct.nfsm_chain* %18, i32 %128)
  %130 = load i32, i32* %15, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %15, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @NFS_OP_PUTFH, align 4
  %134 = call i32 @nfsm_chain_add_32(i32 %132, %struct.nfsm_chain* %18, i32 %133)
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %14, align 4
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @nfsm_chain_add_fh(i32 %135, %struct.nfsm_chain* %18, i32 %136, i32 %139, i32 %142)
  %144 = load i32, i32* %15, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %15, align 4
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @NFS_OP_LINK, align 4
  %148 = call i32 @nfsm_chain_add_32(i32 %146, %struct.nfsm_chain* %18, i32 %147)
  %149 = load i32, i32* %8, align 4
  %150 = load %struct.componentname*, %struct.componentname** %7, align 8
  %151 = getelementptr inbounds %struct.componentname, %struct.componentname* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.componentname*, %struct.componentname** %7, align 8
  %154 = getelementptr inbounds %struct.componentname, %struct.componentname* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.nfsmount*, %struct.nfsmount** %11, align 8
  %157 = call i32 @nfsm_chain_add_name(i32 %149, %struct.nfsm_chain* %18, i32 %152, i64 %155, %struct.nfsmount* %156)
  %158 = load i32, i32* %15, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %15, align 4
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* @NFS_OP_GETATTR, align 4
  %162 = call i32 @nfsm_chain_add_32(i32 %160, %struct.nfsm_chain* %18, i32 %161)
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* @nfs_getattr_bitmap, align 4
  %165 = load %struct.nfsmount*, %struct.nfsmount** %11, align 8
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %167 = call i32 @nfsm_chain_add_bitmap_supported(i32 %163, %struct.nfsm_chain* %18, i32 %164, %struct.nfsmount* %165, %struct.TYPE_20__* %166)
  %168 = load i32, i32* %15, align 4
  %169 = add nsw i32 %168, -1
  store i32 %169, i32* %15, align 4
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* @NFS_OP_RESTOREFH, align 4
  %172 = call i32 @nfsm_chain_add_32(i32 %170, %struct.nfsm_chain* %18, i32 %171)
  %173 = load i32, i32* %15, align 4
  %174 = add nsw i32 %173, -1
  store i32 %174, i32* %15, align 4
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* @NFS_OP_GETATTR, align 4
  %177 = call i32 @nfsm_chain_add_32(i32 %175, %struct.nfsm_chain* %18, i32 %176)
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* @nfs_getattr_bitmap, align 4
  %180 = load %struct.nfsmount*, %struct.nfsmount** %11, align 8
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %182 = call i32 @nfsm_chain_add_bitmap_supported(i32 %178, %struct.nfsm_chain* %18, i32 %179, %struct.nfsmount* %180, %struct.TYPE_20__* %181)
  %183 = load i32, i32* %8, align 4
  %184 = call i32 @nfsm_chain_build_done(i32 %183, %struct.nfsm_chain* %18)
  %185 = load i32, i32* %8, align 4
  %186 = load i32, i32* %15, align 4
  %187 = icmp eq i32 %186, 0
  %188 = zext i1 %187 to i32
  %189 = load i32, i32* @EPROTO, align 4
  %190 = call i32 @nfsm_assert(i32 %185, i32 %188, i32 %189)
  %191 = load i32, i32* %8, align 4
  %192 = call i32 @nfsmout_if(i32 %191)
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %194 = load i32, i32* @NFSPROC4_COMPOUND, align 4
  %195 = load i32, i32* %4, align 4
  %196 = call i32 @nfs_request(%struct.TYPE_20__* %193, i32* null, %struct.nfsm_chain* %18, i32 %194, i32 %195, %struct.nfsreq_secinfo_args* %20, %struct.nfsm_chain* %19, i32* %16, i32* %10)
  store i32 %196, i32* %8, align 4
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %199 = call i32 @nfs_node_lock2(%struct.TYPE_20__* %197, %struct.TYPE_20__* %198)
  store i32 %199, i32* %9, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %91
  %202 = load i32, i32* %9, align 4
  store i32 %202, i32* %8, align 4
  br label %255

203:                                              ; preds = %91
  %204 = load i32, i32* %8, align 4
  %205 = call i32 @nfsm_chain_skip_tag(i32 %204, %struct.nfsm_chain* %19)
  %206 = load i32, i32* %8, align 4
  %207 = load i32, i32* %15, align 4
  %208 = call i32 @nfsm_chain_get_32(i32 %206, %struct.nfsm_chain* %19, i32 %207)
  %209 = load i32, i32* %8, align 4
  %210 = load i32, i32* @NFS_OP_PUTFH, align 4
  %211 = call i32 @nfsm_chain_op_check(i32 %209, %struct.nfsm_chain* %19, i32 %210)
  %212 = load i32, i32* %8, align 4
  %213 = load i32, i32* @NFS_OP_SAVEFH, align 4
  %214 = call i32 @nfsm_chain_op_check(i32 %212, %struct.nfsm_chain* %19, i32 %213)
  %215 = load i32, i32* %8, align 4
  %216 = load i32, i32* @NFS_OP_PUTFH, align 4
  %217 = call i32 @nfsm_chain_op_check(i32 %215, %struct.nfsm_chain* %19, i32 %216)
  %218 = load i32, i32* %8, align 4
  %219 = load i32, i32* @NFS_OP_LINK, align 4
  %220 = call i32 @nfsm_chain_op_check(i32 %218, %struct.nfsm_chain* %19, i32 %219)
  %221 = load i32, i32* %8, align 4
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %223 = call i32 @nfsm_chain_check_change_info(i32 %221, %struct.nfsm_chain* %19, %struct.TYPE_20__* %222)
  %224 = load i32, i32* %8, align 4
  %225 = load i32, i32* @NFS_OP_GETATTR, align 4
  %226 = call i32 @nfsm_chain_op_check(i32 %224, %struct.nfsm_chain* %19, i32 %225)
  %227 = load i32, i32* %16, align 4
  store i32 %227, i32* %17, align 4
  %228 = load i32, i32* %8, align 4
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %230 = load i32, i32* %14, align 4
  %231 = call i32 @nfsm_chain_loadattr(i32 %228, %struct.nfsm_chain* %19, %struct.TYPE_20__* %229, i32 %230, i32* %16)
  %232 = load i32, i32* %8, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %203
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %236 = call i32 @NATTRINVALIDATE(%struct.TYPE_20__* %235)
  br label %237

237:                                              ; preds = %234, %203
  %238 = load i32, i32* %8, align 4
  %239 = load i32, i32* @NFS_OP_RESTOREFH, align 4
  %240 = call i32 @nfsm_chain_op_check(i32 %238, %struct.nfsm_chain* %19, i32 %239)
  %241 = load i32, i32* %8, align 4
  %242 = load i32, i32* @NFS_OP_GETATTR, align 4
  %243 = call i32 @nfsm_chain_op_check(i32 %241, %struct.nfsm_chain* %19, i32 %242)
  %244 = load i32, i32* %17, align 4
  store i32 %244, i32* %16, align 4
  %245 = load i32, i32* %8, align 4
  %246 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %247 = load i32, i32* %14, align 4
  %248 = call i32 @nfsm_chain_loadattr(i32 %245, %struct.nfsm_chain* %19, %struct.TYPE_20__* %246, i32 %247, i32* %16)
  %249 = load i32, i32* %8, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %237
  %252 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %253 = call i32 @NATTRINVALIDATE(%struct.TYPE_20__* %252)
  br label %254

254:                                              ; preds = %251, %237
  br label %255

255:                                              ; preds = %254, %201
  %256 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %18)
  %257 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %19)
  %258 = load i32, i32* %9, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %266, label %260

260:                                              ; preds = %255
  %261 = load i32, i32* @NMODIFIED, align 4
  %262 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %263 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 4
  br label %266

266:                                              ; preds = %260, %255
  %267 = load i32, i32* %8, align 4
  %268 = load i32, i32* @EEXIST, align 4
  %269 = icmp eq i32 %267, %268
  br i1 %269, label %270, label %271

270:                                              ; preds = %266
  store i32 0, i32* %8, align 4
  br label %271

271:                                              ; preds = %270, %266
  %272 = load i32, i32* %8, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %290, label %274

274:                                              ; preds = %271
  %275 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %276 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @NNEGNCENTRIES, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %290

281:                                              ; preds = %274
  %282 = load i32, i32* @NNEGNCENTRIES, align 4
  %283 = xor i32 %282, -1
  %284 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %285 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = and i32 %286, %283
  store i32 %287, i32* %285, align 4
  %288 = load i32, i32* %6, align 4
  %289 = call i32 @cache_purge_negatives(i32 %288)
  br label %290

290:                                              ; preds = %281, %274, %271
  %291 = load i32, i32* %9, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %297, label %293

293:                                              ; preds = %290
  %294 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %295 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %296 = call i32 @nfs_node_unlock2(%struct.TYPE_20__* %294, %struct.TYPE_20__* %295)
  br label %297

297:                                              ; preds = %293, %290
  %298 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %299 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %300 = call i32 @nfs_node_clear_busy2(%struct.TYPE_20__* %298, %struct.TYPE_20__* %299)
  %301 = load i32, i32* %8, align 4
  store i32 %301, i32* %2, align 4
  br label %302

302:                                              ; preds = %297, %89, %74, %64, %51, %43
  %303 = load i32, i32* %2, align 4
  ret i32 %303
}

declare dso_local %struct.TYPE_20__* @VTONFS(i32) #1

declare dso_local i64 @vnode_mount(i32) #1

declare dso_local %struct.nfsmount* @VTONMP(i32) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @nfs_flush(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i32 @vfs_context_thread(i32) #1

declare dso_local i32 @nfs_node_set_busy2(%struct.TYPE_20__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args*, %struct.TYPE_20__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @nfsm_chain_null(%struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_build_alloc_init(i32, %struct.nfsm_chain*, i64) #1

declare dso_local i32 @nfsm_chain_add_compound_header(i32, %struct.nfsm_chain*, i8*, i32, i32) #1

declare dso_local i32 @nfsm_chain_add_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_add_fh(i32, %struct.nfsm_chain*, i32, i32, i32) #1

declare dso_local i32 @nfsm_chain_add_name(i32, %struct.nfsm_chain*, i32, i64, %struct.nfsmount*) #1

declare dso_local i32 @nfsm_chain_add_bitmap_supported(i32, %struct.nfsm_chain*, i32, %struct.nfsmount*, %struct.TYPE_20__*) #1

declare dso_local i32 @nfsm_chain_build_done(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_assert(i32, i32, i32) #1

declare dso_local i32 @nfsmout_if(i32) #1

declare dso_local i32 @nfs_request(%struct.TYPE_20__*, i32*, %struct.nfsm_chain*, i32, i32, %struct.nfsreq_secinfo_args*, %struct.nfsm_chain*, i32*, i32*) #1

declare dso_local i32 @nfs_node_lock2(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @nfsm_chain_skip_tag(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_get_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_op_check(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_check_change_info(i32, %struct.nfsm_chain*, %struct.TYPE_20__*) #1

declare dso_local i32 @nfsm_chain_loadattr(i32, %struct.nfsm_chain*, %struct.TYPE_20__*, i32, i32*) #1

declare dso_local i32 @NATTRINVALIDATE(%struct.TYPE_20__*) #1

declare dso_local i32 @nfsm_chain_cleanup(%struct.nfsm_chain*) #1

declare dso_local i32 @cache_purge_negatives(i32) #1

declare dso_local i32 @nfs_node_unlock2(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @nfs_node_clear_busy2(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
