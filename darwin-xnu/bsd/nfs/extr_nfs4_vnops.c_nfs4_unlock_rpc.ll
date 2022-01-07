; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_unlock_rpc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_unlock_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.nfs_lock_owner = type { i32, i32 }
%struct.nfsmount = type { i32 }
%struct.nfsm_chain = type { i32 }
%struct.nfsreq_secinfo_args = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@NFS_FFLAG_TRIGGER_REFERRAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NFSX_UNSIGNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"unlock\00", align 1
@NFS_OP_PUTFH = common dso_local global i32 0, align 4
@NFS_VER4 = common dso_local global i32 0, align 4
@NFS_OP_GETATTR = common dso_local global i32 0, align 4
@nfs_getattr_bitmap = common dso_local global i32 0, align 4
@NFS_OP_LOCKU = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i32 0, align 4
@NFS_LOCK_TYPE_WRITE = common dso_local global i32 0, align 4
@NFS_LOCK_TYPE_READ = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NFSPROC4_COMPOUND = common dso_local global i32 0, align 4
@R_NOINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_unlock_rpc(%struct.TYPE_12__* %0, %struct.nfs_lock_owner* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.nfs_lock_owner*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.nfsmount*, align 8
  %19 = alloca %struct.nfsm_chain, align 4
  %20 = alloca %struct.nfsm_chain, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.nfsreq_secinfo_args, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %10, align 8
  store %struct.nfs_lock_owner* %1, %struct.nfs_lock_owner** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %22, align 4
  %27 = load i32, i32* @ENOENT, align 4
  store i32 %27, i32* %23, align 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %29 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_12__* %28)
  store %struct.nfsmount* %29, %struct.nfsmount** %18, align 8
  %30 = load %struct.nfsmount*, %struct.nfsmount** %18, align 8
  %31 = call i64 @nfs_mount_gone(%struct.nfsmount* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %8
  %34 = load i32, i32* @ENXIO, align 4
  store i32 %34, i32* %9, align 4
  br label %189

35:                                               ; preds = %8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @NFS_FFLAG_TRIGGER_REFERRAL, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %9, align 4
  br label %189

45:                                               ; preds = %35
  %46 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %11, align 8
  %47 = call i32 @nfs_lock_owner_set_busy(%struct.nfs_lock_owner* %46, i32* null)
  store i32 %47, i32* %22, align 4
  %48 = load i32, i32* %22, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %22, align 4
  store i32 %51, i32* %9, align 4
  br label %189

52:                                               ; preds = %45
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %54 = call i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args* %26, %struct.TYPE_12__* %53, i32* null, i32 0, i32* null, i32 0)
  %55 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %19)
  %56 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %20)
  store i32 3, i32* %24, align 4
  %57 = load i32, i32* %22, align 4
  %58 = load i32, i32* @NFSX_UNSIGNED, align 4
  %59 = mul nsw i32 26, %58
  %60 = call i32 @nfsm_chain_build_alloc_init(i32 %57, %struct.nfsm_chain* %19, i32 %59)
  %61 = load i32, i32* %22, align 4
  %62 = load %struct.nfsmount*, %struct.nfsmount** %18, align 8
  %63 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %24, align 4
  %66 = call i32 @nfsm_chain_add_compound_header(i32 %61, %struct.nfsm_chain* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load i32, i32* %24, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %24, align 4
  %69 = load i32, i32* %22, align 4
  %70 = load i32, i32* @NFS_OP_PUTFH, align 4
  %71 = call i32 @nfsm_chain_add_32(i32 %69, %struct.nfsm_chain* %19, i32 %70)
  %72 = load i32, i32* %22, align 4
  %73 = load i32, i32* @NFS_VER4, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @nfsm_chain_add_fh(i32 %72, %struct.nfsm_chain* %19, i32 %73, i32 %76, i32 %79)
  %81 = load i32, i32* %24, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %24, align 4
  %83 = load i32, i32* %22, align 4
  %84 = load i32, i32* @NFS_OP_GETATTR, align 4
  %85 = call i32 @nfsm_chain_add_32(i32 %83, %struct.nfsm_chain* %19, i32 %84)
  %86 = load i32, i32* %22, align 4
  %87 = load i32, i32* @nfs_getattr_bitmap, align 4
  %88 = load %struct.nfsmount*, %struct.nfsmount** %18, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %90 = call i32 @nfsm_chain_add_bitmap_supported(i32 %86, %struct.nfsm_chain* %19, i32 %87, %struct.nfsmount* %88, %struct.TYPE_12__* %89)
  %91 = load i32, i32* %24, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %24, align 4
  %93 = load i32, i32* %22, align 4
  %94 = load i32, i32* @NFS_OP_LOCKU, align 4
  %95 = call i32 @nfsm_chain_add_32(i32 %93, %struct.nfsm_chain* %19, i32 %94)
  %96 = load i32, i32* %22, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* @F_WRLCK, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %52
  %101 = load i32, i32* @NFS_LOCK_TYPE_WRITE, align 4
  br label %104

102:                                              ; preds = %52
  %103 = load i32, i32* @NFS_LOCK_TYPE_READ, align 4
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i32 [ %101, %100 ], [ %103, %102 ]
  %106 = call i32 @nfsm_chain_add_32(i32 %96, %struct.nfsm_chain* %19, i32 %105)
  %107 = load i32, i32* %22, align 4
  %108 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %11, align 8
  %109 = getelementptr inbounds %struct.nfs_lock_owner, %struct.nfs_lock_owner* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @nfsm_chain_add_32(i32 %107, %struct.nfsm_chain* %19, i32 %110)
  %112 = load i32, i32* %22, align 4
  %113 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %11, align 8
  %114 = getelementptr inbounds %struct.nfs_lock_owner, %struct.nfs_lock_owner* %113, i32 0, i32 0
  %115 = call i32 @nfsm_chain_add_stateid(i32 %112, %struct.nfsm_chain* %19, i32* %114)
  %116 = load i32, i32* %22, align 4
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @nfsm_chain_add_64(i32 %116, %struct.nfsm_chain* %19, i32 %117)
  %119 = load i32, i32* %22, align 4
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @NFS_LOCK_LENGTH(i32 %120, i32 %121)
  %123 = call i32 @nfsm_chain_add_64(i32 %119, %struct.nfsm_chain* %19, i32 %122)
  %124 = load i32, i32* %22, align 4
  %125 = call i32 @nfsm_chain_build_done(i32 %124, %struct.nfsm_chain* %19)
  %126 = load i32, i32* %22, align 4
  %127 = load i32, i32* %24, align 4
  %128 = icmp eq i32 %127, 0
  %129 = zext i1 %128 to i32
  %130 = load i32, i32* @EPROTO, align 4
  %131 = call i32 @nfsm_assert(i32 %126, i32 %129, i32 %130)
  %132 = load i32, i32* %22, align 4
  %133 = call i32 @nfsmout_if(i32 %132)
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %135 = load i32, i32* @NFSPROC4_COMPOUND, align 4
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* %17, align 4
  %138 = load i32, i32* %15, align 4
  %139 = load i32, i32* @R_NOINTR, align 4
  %140 = or i32 %138, %139
  %141 = call i32 @nfs_request2(%struct.TYPE_12__* %134, i32* null, %struct.nfsm_chain* %19, i32 %135, i32 %136, i32 %137, %struct.nfsreq_secinfo_args* %26, i32 %140, %struct.nfsm_chain* %20, i32* %21, i32* %25)
  store i32 %141, i32* %22, align 4
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %143 = call i32 @nfs_node_lock(%struct.TYPE_12__* %142)
  store i32 %143, i32* %23, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %104
  %146 = load i32, i32* %23, align 4
  store i32 %146, i32* %22, align 4
  br label %147

147:                                              ; preds = %145, %104
  %148 = load i32, i32* %22, align 4
  %149 = call i32 @nfsm_chain_skip_tag(i32 %148, %struct.nfsm_chain* %20)
  %150 = load i32, i32* %22, align 4
  %151 = load i32, i32* %24, align 4
  %152 = call i32 @nfsm_chain_get_32(i32 %150, %struct.nfsm_chain* %20, i32 %151)
  %153 = load i32, i32* %22, align 4
  %154 = load i32, i32* @NFS_OP_PUTFH, align 4
  %155 = call i32 @nfsm_chain_op_check(i32 %153, %struct.nfsm_chain* %20, i32 %154)
  %156 = load i32, i32* %22, align 4
  %157 = call i32 @nfsmout_if(i32 %156)
  %158 = load i32, i32* %22, align 4
  %159 = load i32, i32* @NFS_OP_GETATTR, align 4
  %160 = call i32 @nfsm_chain_op_check(i32 %158, %struct.nfsm_chain* %20, i32 %159)
  %161 = load i32, i32* %22, align 4
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %163 = load i32, i32* @NFS_VER4, align 4
  %164 = call i32 @nfsm_chain_loadattr(i32 %161, %struct.nfsm_chain* %20, %struct.TYPE_12__* %162, i32 %163, i32* %21)
  %165 = load i32, i32* %22, align 4
  %166 = call i32 @nfsmout_if(i32 %165)
  %167 = load i32, i32* %22, align 4
  %168 = load i32, i32* @NFS_OP_LOCKU, align 4
  %169 = call i32 @nfsm_chain_op_check(i32 %167, %struct.nfsm_chain* %20, i32 %168)
  %170 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %11, align 8
  %171 = load i32, i32* %22, align 4
  %172 = call i32 @nfs_owner_seqid_increment(i32* null, %struct.nfs_lock_owner* %170, i32 %171)
  %173 = load i32, i32* %22, align 4
  %174 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %11, align 8
  %175 = getelementptr inbounds %struct.nfs_lock_owner, %struct.nfs_lock_owner* %174, i32 0, i32 0
  %176 = call i32 @nfsm_chain_get_stateid(i32 %173, %struct.nfsm_chain* %20, i32* %175)
  br label %177

177:                                              ; preds = %147
  %178 = load i32, i32* %23, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %177
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %182 = call i32 @nfs_node_unlock(%struct.TYPE_12__* %181)
  br label %183

183:                                              ; preds = %180, %177
  %184 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %11, align 8
  %185 = call i32 @nfs_lock_owner_clear_busy(%struct.nfs_lock_owner* %184)
  %186 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %19)
  %187 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %20)
  %188 = load i32, i32* %22, align 4
  store i32 %188, i32* %9, align 4
  br label %189

189:                                              ; preds = %183, %50, %43, %33
  %190 = load i32, i32* %9, align 4
  ret i32 %190
}

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_12__*) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @nfs_lock_owner_set_busy(%struct.nfs_lock_owner*, i32*) #1

declare dso_local i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args*, %struct.TYPE_12__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @nfsm_chain_null(%struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_build_alloc_init(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_add_compound_header(i32, %struct.nfsm_chain*, i8*, i32, i32) #1

declare dso_local i32 @nfsm_chain_add_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_add_fh(i32, %struct.nfsm_chain*, i32, i32, i32) #1

declare dso_local i32 @nfsm_chain_add_bitmap_supported(i32, %struct.nfsm_chain*, i32, %struct.nfsmount*, %struct.TYPE_12__*) #1

declare dso_local i32 @nfsm_chain_add_stateid(i32, %struct.nfsm_chain*, i32*) #1

declare dso_local i32 @nfsm_chain_add_64(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @NFS_LOCK_LENGTH(i32, i32) #1

declare dso_local i32 @nfsm_chain_build_done(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_assert(i32, i32, i32) #1

declare dso_local i32 @nfsmout_if(i32) #1

declare dso_local i32 @nfs_request2(%struct.TYPE_12__*, i32*, %struct.nfsm_chain*, i32, i32, i32, %struct.nfsreq_secinfo_args*, i32, %struct.nfsm_chain*, i32*, i32*) #1

declare dso_local i32 @nfs_node_lock(%struct.TYPE_12__*) #1

declare dso_local i32 @nfsm_chain_skip_tag(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_get_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_op_check(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_loadattr(i32, %struct.nfsm_chain*, %struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @nfs_owner_seqid_increment(i32*, %struct.nfs_lock_owner*, i32) #1

declare dso_local i32 @nfsm_chain_get_stateid(i32, %struct.nfsm_chain*, i32*) #1

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_12__*) #1

declare dso_local i32 @nfs_lock_owner_clear_busy(%struct.nfs_lock_owner*) #1

declare dso_local i32 @nfsm_chain_cleanup(%struct.nfsm_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
