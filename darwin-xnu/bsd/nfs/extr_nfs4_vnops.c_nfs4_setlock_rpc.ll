; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_setlock_rpc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_setlock_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.nfs_open_file = type { %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.nfs_file_lock = type { i32, i64, i32, i32, %struct.nfs_lock_owner* }
%struct.nfs_lock_owner = type { i64, i32, i32, %struct.TYPE_17__* }
%struct.nfsmount = type { i64, i32 }
%struct.nfsm_chain = type { i32 }
%struct.nfsreq_secinfo_args = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@NFS_FFLAG_TRIGGER_REFERRAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NFS_FILE_LOCK_WAIT = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i64 0, align 8
@NFS_LOCK_TYPE_WRITEW = common dso_local global i32 0, align 4
@NFS_LOCK_TYPE_READW = common dso_local global i32 0, align 4
@NFS_LOCK_TYPE_WRITE = common dso_local global i32 0, align 4
@NFS_LOCK_TYPE_READ = common dso_local global i32 0, align 4
@NFSX_UNSIGNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@NFS_OP_PUTFH = common dso_local global i32 0, align 4
@NFS_VER4 = common dso_local global i32 0, align 4
@NFS_OP_GETATTR = common dso_local global i32 0, align 4
@nfs_getattr_bitmap = common dso_local global i32 0, align 4
@NFS_OP_LOCK = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NFSPROC4_COMPOUND = common dso_local global i32 0, align 4
@R_NOINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_setlock_rpc(%struct.TYPE_16__* %0, %struct.nfs_open_file* %1, %struct.nfs_file_lock* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.nfs_open_file*, align 8
  %11 = alloca %struct.nfs_file_lock*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nfs_lock_owner*, align 8
  %17 = alloca %struct.nfsmount*, align 8
  %18 = alloca %struct.nfsm_chain, align 4
  %19 = alloca %struct.nfsm_chain, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.nfsreq_secinfo_args, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %9, align 8
  store %struct.nfs_open_file* %1, %struct.nfs_open_file** %10, align 8
  store %struct.nfs_file_lock* %2, %struct.nfs_file_lock** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %28 = load %struct.nfs_file_lock*, %struct.nfs_file_lock** %11, align 8
  %29 = getelementptr inbounds %struct.nfs_file_lock, %struct.nfs_file_lock* %28, i32 0, i32 4
  %30 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %29, align 8
  store %struct.nfs_lock_owner* %30, %struct.nfs_lock_owner** %16, align 8
  store i32 0, i32* %22, align 4
  %31 = load i32, i32* @ENOENT, align 4
  store i32 %31, i32* %23, align 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %33 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_16__* %32)
  store %struct.nfsmount* %33, %struct.nfsmount** %17, align 8
  %34 = load %struct.nfsmount*, %struct.nfsmount** %17, align 8
  %35 = call i64 @nfs_mount_gone(%struct.nfsmount* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %7
  %38 = load i32, i32* @ENXIO, align 4
  store i32 %38, i32* %8, align 4
  br label %343

39:                                               ; preds = %7
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @NFS_FFLAG_TRIGGER_REFERRAL, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %8, align 4
  br label %343

49:                                               ; preds = %39
  %50 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %16, align 8
  %51 = getelementptr inbounds %struct.nfs_lock_owner, %struct.nfs_lock_owner* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.nfsmount*, %struct.nfsmount** %17, align 8
  %54 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %24, align 4
  %58 = load %struct.nfs_file_lock*, %struct.nfs_file_lock** %11, align 8
  %59 = getelementptr inbounds %struct.nfs_file_lock, %struct.nfs_file_lock* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @NFS_FILE_LOCK_WAIT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %49
  %65 = load %struct.nfs_file_lock*, %struct.nfs_file_lock** %11, align 8
  %66 = getelementptr inbounds %struct.nfs_file_lock, %struct.nfs_file_lock* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @F_WRLCK, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @NFS_LOCK_TYPE_WRITEW, align 4
  br label %74

72:                                               ; preds = %64
  %73 = load i32, i32* @NFS_LOCK_TYPE_READW, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  br label %88

76:                                               ; preds = %49
  %77 = load %struct.nfs_file_lock*, %struct.nfs_file_lock** %11, align 8
  %78 = getelementptr inbounds %struct.nfs_file_lock, %struct.nfs_file_lock* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @F_WRLCK, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* @NFS_LOCK_TYPE_WRITE, align 4
  br label %86

84:                                               ; preds = %76
  %85 = load i32, i32* @NFS_LOCK_TYPE_READ, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  br label %88

88:                                               ; preds = %86, %74
  %89 = phi i32 [ %75, %74 ], [ %87, %86 ]
  store i32 %89, i32* %21, align 4
  %90 = load i32, i32* %24, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %128

92:                                               ; preds = %88
  %93 = load %struct.nfs_open_file*, %struct.nfs_open_file** %10, align 8
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @nfs_open_file_set_busy(%struct.nfs_open_file* %93, i32 %94)
  store i32 %95, i32* %22, align 4
  %96 = load i32, i32* %22, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* %22, align 4
  store i32 %99, i32* %8, align 4
  br label %343

100:                                              ; preds = %92
  %101 = load %struct.nfs_open_file*, %struct.nfs_open_file** %10, align 8
  %102 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %101, i32 0, i32 0
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %102, align 8
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @nfs_open_owner_set_busy(%struct.TYPE_17__* %103, i32 %104)
  store i32 %105, i32* %22, align 4
  %106 = load i32, i32* %22, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %100
  %109 = load %struct.nfs_open_file*, %struct.nfs_open_file** %10, align 8
  %110 = call i32 @nfs_open_file_clear_busy(%struct.nfs_open_file* %109)
  %111 = load i32, i32* %22, align 4
  store i32 %111, i32* %8, align 4
  br label %343

112:                                              ; preds = %100
  %113 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %16, align 8
  %114 = getelementptr inbounds %struct.nfs_lock_owner, %struct.nfs_lock_owner* %113, i32 0, i32 3
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %114, align 8
  %116 = icmp ne %struct.TYPE_17__* %115, null
  br i1 %116, label %127, label %117

117:                                              ; preds = %112
  %118 = load %struct.nfs_open_file*, %struct.nfs_open_file** %10, align 8
  %119 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %118, i32 0, i32 0
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %119, align 8
  %121 = call i32 @nfs_open_owner_ref(%struct.TYPE_17__* %120)
  %122 = load %struct.nfs_open_file*, %struct.nfs_open_file** %10, align 8
  %123 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %122, i32 0, i32 0
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %123, align 8
  %125 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %16, align 8
  %126 = getelementptr inbounds %struct.nfs_lock_owner, %struct.nfs_lock_owner* %125, i32 0, i32 3
  store %struct.TYPE_17__* %124, %struct.TYPE_17__** %126, align 8
  br label %127

127:                                              ; preds = %117, %112
  br label %128

128:                                              ; preds = %127, %88
  %129 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %16, align 8
  %130 = load i32, i32* %14, align 4
  %131 = call i32 @nfs_lock_owner_set_busy(%struct.nfs_lock_owner* %129, i32 %130)
  store i32 %131, i32* %22, align 4
  %132 = load i32, i32* %22, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %128
  %135 = load i32, i32* %24, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %134
  %138 = load %struct.nfs_open_file*, %struct.nfs_open_file** %10, align 8
  %139 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %138, i32 0, i32 0
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %139, align 8
  %141 = call i32 @nfs_open_owner_clear_busy(%struct.TYPE_17__* %140)
  %142 = load %struct.nfs_open_file*, %struct.nfs_open_file** %10, align 8
  %143 = call i32 @nfs_open_file_clear_busy(%struct.nfs_open_file* %142)
  br label %144

144:                                              ; preds = %137, %134
  %145 = load i32, i32* %22, align 4
  store i32 %145, i32* %8, align 4
  br label %343

146:                                              ; preds = %128
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %148 = call i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args* %27, %struct.TYPE_16__* %147, i32* null, i32 0, i32* null, i32 0)
  %149 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %18)
  %150 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %19)
  store i32 3, i32* %25, align 4
  %151 = load i32, i32* %22, align 4
  %152 = load i32, i32* @NFSX_UNSIGNED, align 4
  %153 = mul nsw i32 33, %152
  %154 = call i32 @nfsm_chain_build_alloc_init(i32 %151, %struct.nfsm_chain* %18, i32 %153)
  %155 = load i32, i32* %22, align 4
  %156 = load %struct.nfsmount*, %struct.nfsmount** %17, align 8
  %157 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %25, align 4
  %160 = call i32 @nfsm_chain_add_compound_header(i32 %155, %struct.nfsm_chain* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %158, i32 %159)
  %161 = load i32, i32* %25, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %25, align 4
  %163 = load i32, i32* %22, align 4
  %164 = load i32, i32* @NFS_OP_PUTFH, align 4
  %165 = call i32 @nfsm_chain_add_32(i32 %163, %struct.nfsm_chain* %18, i32 %164)
  %166 = load i32, i32* %22, align 4
  %167 = load i32, i32* @NFS_VER4, align 4
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @nfsm_chain_add_fh(i32 %166, %struct.nfsm_chain* %18, i32 %167, i32 %170, i32 %173)
  %175 = load i32, i32* %25, align 4
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* %25, align 4
  %177 = load i32, i32* %22, align 4
  %178 = load i32, i32* @NFS_OP_GETATTR, align 4
  %179 = call i32 @nfsm_chain_add_32(i32 %177, %struct.nfsm_chain* %18, i32 %178)
  %180 = load i32, i32* %22, align 4
  %181 = load i32, i32* @nfs_getattr_bitmap, align 4
  %182 = load %struct.nfsmount*, %struct.nfsmount** %17, align 8
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %184 = call i32 @nfsm_chain_add_bitmap_supported(i32 %180, %struct.nfsm_chain* %18, i32 %181, %struct.nfsmount* %182, %struct.TYPE_16__* %183)
  %185 = load i32, i32* %25, align 4
  %186 = add nsw i32 %185, -1
  store i32 %186, i32* %25, align 4
  %187 = load i32, i32* %22, align 4
  %188 = load i32, i32* @NFS_OP_LOCK, align 4
  %189 = call i32 @nfsm_chain_add_32(i32 %187, %struct.nfsm_chain* %18, i32 %188)
  %190 = load i32, i32* %22, align 4
  %191 = load i32, i32* %21, align 4
  %192 = call i32 @nfsm_chain_add_32(i32 %190, %struct.nfsm_chain* %18, i32 %191)
  %193 = load i32, i32* %22, align 4
  %194 = load i32, i32* %12, align 4
  %195 = call i32 @nfsm_chain_add_32(i32 %193, %struct.nfsm_chain* %18, i32 %194)
  %196 = load i32, i32* %22, align 4
  %197 = load %struct.nfs_file_lock*, %struct.nfs_file_lock** %11, align 8
  %198 = getelementptr inbounds %struct.nfs_file_lock, %struct.nfs_file_lock* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @nfsm_chain_add_64(i32 %196, %struct.nfsm_chain* %18, i32 %199)
  %201 = load i32, i32* %22, align 4
  %202 = load %struct.nfs_file_lock*, %struct.nfs_file_lock** %11, align 8
  %203 = getelementptr inbounds %struct.nfs_file_lock, %struct.nfs_file_lock* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.nfs_file_lock*, %struct.nfs_file_lock** %11, align 8
  %206 = getelementptr inbounds %struct.nfs_file_lock, %struct.nfs_file_lock* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @NFS_LOCK_LENGTH(i32 %204, i32 %207)
  %209 = call i32 @nfsm_chain_add_64(i32 %201, %struct.nfsm_chain* %18, i32 %208)
  %210 = load i32, i32* %22, align 4
  %211 = load i32, i32* %24, align 4
  %212 = call i32 @nfsm_chain_add_32(i32 %210, %struct.nfsm_chain* %18, i32 %211)
  %213 = load i32, i32* %24, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %236

215:                                              ; preds = %146
  %216 = load i32, i32* %22, align 4
  %217 = load %struct.nfs_open_file*, %struct.nfs_open_file** %10, align 8
  %218 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %217, i32 0, i32 0
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @nfsm_chain_add_32(i32 %216, %struct.nfsm_chain* %18, i32 %221)
  %223 = load i32, i32* %22, align 4
  %224 = load %struct.nfs_open_file*, %struct.nfs_open_file** %10, align 8
  %225 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %224, i32 0, i32 1
  %226 = call i32 @nfsm_chain_add_stateid(i32 %223, %struct.nfsm_chain* %18, i32* %225)
  %227 = load i32, i32* %22, align 4
  %228 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %16, align 8
  %229 = getelementptr inbounds %struct.nfs_lock_owner, %struct.nfs_lock_owner* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @nfsm_chain_add_32(i32 %227, %struct.nfsm_chain* %18, i32 %230)
  %232 = load i32, i32* %22, align 4
  %233 = load %struct.nfsmount*, %struct.nfsmount** %17, align 8
  %234 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %16, align 8
  %235 = call i32 @nfsm_chain_add_lock_owner4(i32 %232, %struct.nfsm_chain* %18, %struct.nfsmount* %233, %struct.nfs_lock_owner* %234)
  br label %246

236:                                              ; preds = %146
  %237 = load i32, i32* %22, align 4
  %238 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %16, align 8
  %239 = getelementptr inbounds %struct.nfs_lock_owner, %struct.nfs_lock_owner* %238, i32 0, i32 2
  %240 = call i32 @nfsm_chain_add_stateid(i32 %237, %struct.nfsm_chain* %18, i32* %239)
  %241 = load i32, i32* %22, align 4
  %242 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %16, align 8
  %243 = getelementptr inbounds %struct.nfs_lock_owner, %struct.nfs_lock_owner* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @nfsm_chain_add_32(i32 %241, %struct.nfsm_chain* %18, i32 %244)
  br label %246

246:                                              ; preds = %236, %215
  %247 = load i32, i32* %22, align 4
  %248 = call i32 @nfsm_chain_build_done(i32 %247, %struct.nfsm_chain* %18)
  %249 = load i32, i32* %22, align 4
  %250 = load i32, i32* %25, align 4
  %251 = icmp eq i32 %250, 0
  %252 = zext i1 %251 to i32
  %253 = load i32, i32* @EPROTO, align 4
  %254 = call i32 @nfsm_assert(i32 %249, i32 %252, i32 %253)
  %255 = load i32, i32* %22, align 4
  %256 = call i32 @nfsmout_if(i32 %255)
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %258 = load i32, i32* @NFSPROC4_COMPOUND, align 4
  %259 = load i32, i32* %14, align 4
  %260 = load i32, i32* %15, align 4
  %261 = load i32, i32* %13, align 4
  %262 = load i32, i32* @R_NOINTR, align 4
  %263 = or i32 %261, %262
  %264 = call i32 @nfs_request2(%struct.TYPE_16__* %257, i32* null, %struct.nfsm_chain* %18, i32 %258, i32 %259, i32 %260, %struct.nfsreq_secinfo_args* %27, i32 %263, %struct.nfsm_chain* %19, i32* %20, i32* %26)
  store i32 %264, i32* %22, align 4
  %265 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %266 = call i32 @nfs_node_lock(%struct.TYPE_16__* %265)
  store i32 %266, i32* %23, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %246
  %269 = load i32, i32* %23, align 4
  store i32 %269, i32* %22, align 4
  br label %270

270:                                              ; preds = %268, %246
  %271 = load i32, i32* %22, align 4
  %272 = call i32 @nfsm_chain_skip_tag(i32 %271, %struct.nfsm_chain* %19)
  %273 = load i32, i32* %22, align 4
  %274 = load i32, i32* %25, align 4
  %275 = call i32 @nfsm_chain_get_32(i32 %273, %struct.nfsm_chain* %19, i32 %274)
  %276 = load i32, i32* %22, align 4
  %277 = load i32, i32* @NFS_OP_PUTFH, align 4
  %278 = call i32 @nfsm_chain_op_check(i32 %276, %struct.nfsm_chain* %19, i32 %277)
  %279 = load i32, i32* %22, align 4
  %280 = call i32 @nfsmout_if(i32 %279)
  %281 = load i32, i32* %22, align 4
  %282 = load i32, i32* @NFS_OP_GETATTR, align 4
  %283 = call i32 @nfsm_chain_op_check(i32 %281, %struct.nfsm_chain* %19, i32 %282)
  %284 = load i32, i32* %22, align 4
  %285 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %286 = load i32, i32* @NFS_VER4, align 4
  %287 = call i32 @nfsm_chain_loadattr(i32 %284, %struct.nfsm_chain* %19, %struct.TYPE_16__* %285, i32 %286, i32* %20)
  %288 = load i32, i32* %22, align 4
  %289 = call i32 @nfsmout_if(i32 %288)
  %290 = load i32, i32* %22, align 4
  %291 = load i32, i32* @NFS_OP_LOCK, align 4
  %292 = call i32 @nfsm_chain_op_check(i32 %290, %struct.nfsm_chain* %19, i32 %291)
  %293 = load i32, i32* %24, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %299

295:                                              ; preds = %270
  %296 = load %struct.nfs_open_file*, %struct.nfs_open_file** %10, align 8
  %297 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %296, i32 0, i32 0
  %298 = load %struct.TYPE_17__*, %struct.TYPE_17__** %297, align 8
  br label %300

299:                                              ; preds = %270
  br label %300

300:                                              ; preds = %299, %295
  %301 = phi %struct.TYPE_17__* [ %298, %295 ], [ null, %299 ]
  %302 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %16, align 8
  %303 = load i32, i32* %22, align 4
  %304 = call i32 @nfs_owner_seqid_increment(%struct.TYPE_17__* %301, %struct.nfs_lock_owner* %302, i32 %303)
  %305 = load i32, i32* %22, align 4
  %306 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %16, align 8
  %307 = getelementptr inbounds %struct.nfs_lock_owner, %struct.nfs_lock_owner* %306, i32 0, i32 2
  %308 = call i32 @nfsm_chain_get_stateid(i32 %305, %struct.nfsm_chain* %19, i32* %307)
  %309 = load i32, i32* %24, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %320

311:                                              ; preds = %300
  %312 = load i32, i32* %22, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %320, label %314

314:                                              ; preds = %311
  %315 = load %struct.nfsmount*, %struct.nfsmount** %17, align 8
  %316 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %16, align 8
  %319 = getelementptr inbounds %struct.nfs_lock_owner, %struct.nfs_lock_owner* %318, i32 0, i32 0
  store i64 %317, i64* %319, align 8
  br label %320

320:                                              ; preds = %314, %311, %300
  br label %321

321:                                              ; preds = %320
  %322 = load i32, i32* %23, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %327, label %324

324:                                              ; preds = %321
  %325 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %326 = call i32 @nfs_node_unlock(%struct.TYPE_16__* %325)
  br label %327

327:                                              ; preds = %324, %321
  %328 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %16, align 8
  %329 = call i32 @nfs_lock_owner_clear_busy(%struct.nfs_lock_owner* %328)
  %330 = load i32, i32* %24, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %339

332:                                              ; preds = %327
  %333 = load %struct.nfs_open_file*, %struct.nfs_open_file** %10, align 8
  %334 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %333, i32 0, i32 0
  %335 = load %struct.TYPE_17__*, %struct.TYPE_17__** %334, align 8
  %336 = call i32 @nfs_open_owner_clear_busy(%struct.TYPE_17__* %335)
  %337 = load %struct.nfs_open_file*, %struct.nfs_open_file** %10, align 8
  %338 = call i32 @nfs_open_file_clear_busy(%struct.nfs_open_file* %337)
  br label %339

339:                                              ; preds = %332, %327
  %340 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %18)
  %341 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %19)
  %342 = load i32, i32* %22, align 4
  store i32 %342, i32* %8, align 4
  br label %343

343:                                              ; preds = %339, %144, %108, %98, %47, %37
  %344 = load i32, i32* %8, align 4
  ret i32 %344
}

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_16__*) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @nfs_open_file_set_busy(%struct.nfs_open_file*, i32) #1

declare dso_local i32 @nfs_open_owner_set_busy(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @nfs_open_file_clear_busy(%struct.nfs_open_file*) #1

declare dso_local i32 @nfs_open_owner_ref(%struct.TYPE_17__*) #1

declare dso_local i32 @nfs_lock_owner_set_busy(%struct.nfs_lock_owner*, i32) #1

declare dso_local i32 @nfs_open_owner_clear_busy(%struct.TYPE_17__*) #1

declare dso_local i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args*, %struct.TYPE_16__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @nfsm_chain_null(%struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_build_alloc_init(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_add_compound_header(i32, %struct.nfsm_chain*, i8*, i32, i32) #1

declare dso_local i32 @nfsm_chain_add_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_add_fh(i32, %struct.nfsm_chain*, i32, i32, i32) #1

declare dso_local i32 @nfsm_chain_add_bitmap_supported(i32, %struct.nfsm_chain*, i32, %struct.nfsmount*, %struct.TYPE_16__*) #1

declare dso_local i32 @nfsm_chain_add_64(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @NFS_LOCK_LENGTH(i32, i32) #1

declare dso_local i32 @nfsm_chain_add_stateid(i32, %struct.nfsm_chain*, i32*) #1

declare dso_local i32 @nfsm_chain_add_lock_owner4(i32, %struct.nfsm_chain*, %struct.nfsmount*, %struct.nfs_lock_owner*) #1

declare dso_local i32 @nfsm_chain_build_done(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_assert(i32, i32, i32) #1

declare dso_local i32 @nfsmout_if(i32) #1

declare dso_local i32 @nfs_request2(%struct.TYPE_16__*, i32*, %struct.nfsm_chain*, i32, i32, i32, %struct.nfsreq_secinfo_args*, i32, %struct.nfsm_chain*, i32*, i32*) #1

declare dso_local i32 @nfs_node_lock(%struct.TYPE_16__*) #1

declare dso_local i32 @nfsm_chain_skip_tag(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_get_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_op_check(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_loadattr(i32, %struct.nfsm_chain*, %struct.TYPE_16__*, i32, i32*) #1

declare dso_local i32 @nfs_owner_seqid_increment(%struct.TYPE_17__*, %struct.nfs_lock_owner*, i32) #1

declare dso_local i32 @nfsm_chain_get_stateid(i32, %struct.nfsm_chain*, i32*) #1

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_16__*) #1

declare dso_local i32 @nfs_lock_owner_clear_busy(%struct.nfs_lock_owner*) #1

declare dso_local i32 @nfsm_chain_cleanup(%struct.nfsm_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
