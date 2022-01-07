; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_getlock_rpc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_getlock_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.nfs_lock_owner = type { i32 }
%struct.flock = type { i64, i64, i32, i64, i64 }
%struct.nfsmount = type { i32 }
%struct.nfsm_chain = type { i32 }
%struct.nfsreq_secinfo_args = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@NFS_FFLAG_TRIGGER_REFERRAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NFSX_UNSIGNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"locktest\00", align 1
@NFS_OP_PUTFH = common dso_local global i32 0, align 4
@NFS_VER4 = common dso_local global i32 0, align 4
@NFS_OP_GETATTR = common dso_local global i32 0, align 4
@nfs_getattr_bitmap = common dso_local global i32 0, align 4
@NFS_OP_LOCKT = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i64 0, align 8
@NFS_LOCK_TYPE_WRITE = common dso_local global i32 0, align 4
@NFS_LOCK_TYPE_READ = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NFSPROC4_COMPOUND = common dso_local global i32 0, align 4
@NFSERR_DENIED = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i64 0, align 8
@F_RDLCK = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_getlock_rpc(%struct.TYPE_12__* %0, %struct.nfs_lock_owner* %1, %struct.flock* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.nfs_lock_owner*, align 8
  %10 = alloca %struct.flock*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.nfsmount*, align 8
  %15 = alloca %struct.nfsm_chain, align 4
  %16 = alloca %struct.nfsm_chain, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.nfsreq_secinfo_args, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %8, align 8
  store %struct.nfs_lock_owner* %1, %struct.nfs_lock_owner** %9, align 8
  store %struct.flock* %2, %struct.flock** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i64 0, i64* %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %26 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_12__* %25)
  store %struct.nfsmount* %26, %struct.nfsmount** %14, align 8
  %27 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %28 = call i64 @nfs_mount_gone(%struct.nfsmount* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %6
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %7, align 4
  br label %214

32:                                               ; preds = %6
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @NFS_FFLAG_TRIGGER_REFERRAL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %7, align 4
  br label %214

42:                                               ; preds = %32
  %43 = load i32, i32* @ENOENT, align 4
  store i32 %43, i32* %21, align 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %45 = call i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args* %24, %struct.TYPE_12__* %44, i32* null, i32 0, i32* null, i32 0)
  %46 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %15)
  %47 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %16)
  store i32 3, i32* %22, align 4
  %48 = load i32, i32* %20, align 4
  %49 = load i32, i32* @NFSX_UNSIGNED, align 4
  %50 = mul nsw i32 26, %49
  %51 = call i32 @nfsm_chain_build_alloc_init(i32 %48, %struct.nfsm_chain* %15, i32 %50)
  %52 = load i32, i32* %20, align 4
  %53 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %54 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %22, align 4
  %57 = call i32 @nfsm_chain_add_compound_header(i32 %52, %struct.nfsm_chain* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load i32, i32* %22, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %22, align 4
  %60 = load i32, i32* %20, align 4
  %61 = load i32, i32* @NFS_OP_PUTFH, align 4
  %62 = call i32 @nfsm_chain_add_32(i32 %60, %struct.nfsm_chain* %15, i32 %61)
  %63 = load i32, i32* %20, align 4
  %64 = load i32, i32* @NFS_VER4, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @nfsm_chain_add_fh(i32 %63, %struct.nfsm_chain* %15, i32 %64, i32 %67, i32 %70)
  %72 = load i32, i32* %22, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %22, align 4
  %74 = load i32, i32* %20, align 4
  %75 = load i32, i32* @NFS_OP_GETATTR, align 4
  %76 = call i32 @nfsm_chain_add_32(i32 %74, %struct.nfsm_chain* %15, i32 %75)
  %77 = load i32, i32* %20, align 4
  %78 = load i32, i32* @nfs_getattr_bitmap, align 4
  %79 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %81 = call i32 @nfsm_chain_add_bitmap_supported(i32 %77, %struct.nfsm_chain* %15, i32 %78, %struct.nfsmount* %79, %struct.TYPE_12__* %80)
  %82 = load i32, i32* %22, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %22, align 4
  %84 = load i32, i32* %20, align 4
  %85 = load i32, i32* @NFS_OP_LOCKT, align 4
  %86 = call i32 @nfsm_chain_add_32(i32 %84, %struct.nfsm_chain* %15, i32 %85)
  %87 = load i32, i32* %20, align 4
  %88 = load %struct.flock*, %struct.flock** %10, align 8
  %89 = getelementptr inbounds %struct.flock, %struct.flock* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @F_WRLCK, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %42
  %94 = load i32, i32* @NFS_LOCK_TYPE_WRITE, align 4
  br label %97

95:                                               ; preds = %42
  %96 = load i32, i32* @NFS_LOCK_TYPE_READ, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  %99 = call i32 @nfsm_chain_add_32(i32 %87, %struct.nfsm_chain* %15, i32 %98)
  %100 = load i32, i32* %20, align 4
  %101 = load i64, i64* %11, align 8
  %102 = call i32 @nfsm_chain_add_64(i32 %100, %struct.nfsm_chain* %15, i64 %101)
  %103 = load i32, i32* %20, align 4
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* %12, align 8
  %106 = call i64 @NFS_LOCK_LENGTH(i64 %104, i64 %105)
  %107 = call i32 @nfsm_chain_add_64(i32 %103, %struct.nfsm_chain* %15, i64 %106)
  %108 = load i32, i32* %20, align 4
  %109 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %110 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %9, align 8
  %111 = call i32 @nfsm_chain_add_lock_owner4(i32 %108, %struct.nfsm_chain* %15, %struct.nfsmount* %109, %struct.nfs_lock_owner* %110)
  %112 = load i32, i32* %20, align 4
  %113 = call i32 @nfsm_chain_build_done(i32 %112, %struct.nfsm_chain* %15)
  %114 = load i32, i32* %20, align 4
  %115 = load i32, i32* %22, align 4
  %116 = icmp eq i32 %115, 0
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* @EPROTO, align 4
  %119 = call i32 @nfsm_assert(i32 %114, i32 %117, i32 %118)
  %120 = load i32, i32* %20, align 4
  %121 = call i32 @nfsmout_if(i32 %120)
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %123 = load i32, i32* @NFSPROC4_COMPOUND, align 4
  %124 = load i32, i32* %13, align 4
  %125 = call i32 @nfs_request(%struct.TYPE_12__* %122, i32* null, %struct.nfsm_chain* %15, i32 %123, i32 %124, %struct.nfsreq_secinfo_args* %24, %struct.nfsm_chain* %16, i64* %17, i32* %23)
  store i32 %125, i32* %20, align 4
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %127 = call i32 @nfs_node_lock(%struct.TYPE_12__* %126)
  store i32 %127, i32* %21, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %97
  %130 = load i32, i32* %21, align 4
  store i32 %130, i32* %20, align 4
  br label %131

131:                                              ; preds = %129, %97
  %132 = load i32, i32* %20, align 4
  %133 = call i32 @nfsm_chain_skip_tag(i32 %132, %struct.nfsm_chain* %16)
  %134 = load i32, i32* %20, align 4
  %135 = load i32, i32* %22, align 4
  %136 = call i32 @nfsm_chain_get_32(i32 %134, %struct.nfsm_chain* %16, i32 %135)
  %137 = load i32, i32* %20, align 4
  %138 = load i32, i32* @NFS_OP_PUTFH, align 4
  %139 = call i32 @nfsm_chain_op_check(i32 %137, %struct.nfsm_chain* %16, i32 %138)
  %140 = load i32, i32* %20, align 4
  %141 = call i32 @nfsmout_if(i32 %140)
  %142 = load i32, i32* %20, align 4
  %143 = load i32, i32* @NFS_OP_GETATTR, align 4
  %144 = call i32 @nfsm_chain_op_check(i32 %142, %struct.nfsm_chain* %16, i32 %143)
  %145 = load i32, i32* %20, align 4
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %147 = load i32, i32* @NFS_VER4, align 4
  %148 = call i32 @nfsm_chain_loadattr(i32 %145, %struct.nfsm_chain* %16, %struct.TYPE_12__* %146, i32 %147, i64* %17)
  %149 = load i32, i32* %20, align 4
  %150 = call i32 @nfsmout_if(i32 %149)
  %151 = load i32, i32* %20, align 4
  %152 = load i32, i32* @NFS_OP_LOCKT, align 4
  %153 = call i32 @nfsm_chain_op_check(i32 %151, %struct.nfsm_chain* %16, i32 %152)
  %154 = load i32, i32* %20, align 4
  %155 = load i32, i32* @NFSERR_DENIED, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %195

157:                                              ; preds = %131
  store i32 0, i32* %20, align 4
  %158 = load i32, i32* %20, align 4
  %159 = load %struct.flock*, %struct.flock** %10, align 8
  %160 = getelementptr inbounds %struct.flock, %struct.flock* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @nfsm_chain_get_64(i32 %158, %struct.nfsm_chain* %16, i64 %161)
  %163 = load i32, i32* %20, align 4
  %164 = load i64, i64* %18, align 8
  %165 = call i32 @nfsm_chain_get_64(i32 %163, %struct.nfsm_chain* %16, i64 %164)
  %166 = load i64, i64* %18, align 8
  %167 = load i64, i64* @UINT64_MAX, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %157
  br label %172

170:                                              ; preds = %157
  %171 = load i64, i64* %18, align 8
  br label %172

172:                                              ; preds = %170, %169
  %173 = phi i64 [ 0, %169 ], [ %171, %170 ]
  %174 = load %struct.flock*, %struct.flock** %10, align 8
  %175 = getelementptr inbounds %struct.flock, %struct.flock* %174, i32 0, i32 4
  store i64 %173, i64* %175, align 8
  %176 = load i32, i32* %20, align 4
  %177 = load i32, i32* %19, align 4
  %178 = call i32 @nfsm_chain_get_32(i32 %176, %struct.nfsm_chain* %16, i32 %177)
  %179 = load i32, i32* %19, align 4
  %180 = load i32, i32* @NFS_LOCK_TYPE_WRITE, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %172
  %183 = load i64, i64* @F_WRLCK, align 8
  br label %186

184:                                              ; preds = %172
  %185 = load i64, i64* @F_RDLCK, align 8
  br label %186

186:                                              ; preds = %184, %182
  %187 = phi i64 [ %183, %182 ], [ %185, %184 ]
  %188 = load %struct.flock*, %struct.flock** %10, align 8
  %189 = getelementptr inbounds %struct.flock, %struct.flock* %188, i32 0, i32 0
  store i64 %187, i64* %189, align 8
  %190 = load %struct.flock*, %struct.flock** %10, align 8
  %191 = getelementptr inbounds %struct.flock, %struct.flock* %190, i32 0, i32 3
  store i64 0, i64* %191, align 8
  %192 = load i32, i32* @SEEK_SET, align 4
  %193 = load %struct.flock*, %struct.flock** %10, align 8
  %194 = getelementptr inbounds %struct.flock, %struct.flock* %193, i32 0, i32 2
  store i32 %192, i32* %194, align 8
  br label %203

195:                                              ; preds = %131
  %196 = load i32, i32* %20, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %202, label %198

198:                                              ; preds = %195
  %199 = load i64, i64* @F_UNLCK, align 8
  %200 = load %struct.flock*, %struct.flock** %10, align 8
  %201 = getelementptr inbounds %struct.flock, %struct.flock* %200, i32 0, i32 0
  store i64 %199, i64* %201, align 8
  br label %202

202:                                              ; preds = %198, %195
  br label %203

203:                                              ; preds = %202, %186
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %21, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %204
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %209 = call i32 @nfs_node_unlock(%struct.TYPE_12__* %208)
  br label %210

210:                                              ; preds = %207, %204
  %211 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %15)
  %212 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %16)
  %213 = load i32, i32* %20, align 4
  store i32 %213, i32* %7, align 4
  br label %214

214:                                              ; preds = %210, %40, %30
  %215 = load i32, i32* %7, align 4
  ret i32 %215
}

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_12__*) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args*, %struct.TYPE_12__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @nfsm_chain_null(%struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_build_alloc_init(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_add_compound_header(i32, %struct.nfsm_chain*, i8*, i32, i32) #1

declare dso_local i32 @nfsm_chain_add_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_add_fh(i32, %struct.nfsm_chain*, i32, i32, i32) #1

declare dso_local i32 @nfsm_chain_add_bitmap_supported(i32, %struct.nfsm_chain*, i32, %struct.nfsmount*, %struct.TYPE_12__*) #1

declare dso_local i32 @nfsm_chain_add_64(i32, %struct.nfsm_chain*, i64) #1

declare dso_local i64 @NFS_LOCK_LENGTH(i64, i64) #1

declare dso_local i32 @nfsm_chain_add_lock_owner4(i32, %struct.nfsm_chain*, %struct.nfsmount*, %struct.nfs_lock_owner*) #1

declare dso_local i32 @nfsm_chain_build_done(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_assert(i32, i32, i32) #1

declare dso_local i32 @nfsmout_if(i32) #1

declare dso_local i32 @nfs_request(%struct.TYPE_12__*, i32*, %struct.nfsm_chain*, i32, i32, %struct.nfsreq_secinfo_args*, %struct.nfsm_chain*, i64*, i32*) #1

declare dso_local i32 @nfs_node_lock(%struct.TYPE_12__*) #1

declare dso_local i32 @nfsm_chain_skip_tag(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_get_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_op_check(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_loadattr(i32, %struct.nfsm_chain*, %struct.TYPE_12__*, i32, i64*) #1

declare dso_local i32 @nfsm_chain_get_64(i32, %struct.nfsm_chain*, i64) #1

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_12__*) #1

declare dso_local i32 @nfsm_chain_cleanup(%struct.nfsm_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
