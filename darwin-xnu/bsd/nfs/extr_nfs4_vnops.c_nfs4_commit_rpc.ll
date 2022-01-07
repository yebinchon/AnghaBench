; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_commit_rpc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_commit_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.nfsmount = type { i32, i32, i64, i32, i32 }
%struct.nfsm_chain = type { i32 }
%struct.nfsreq_secinfo_args = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@NFS_FFLAG_TRIGGER_REFERRAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NFSSTA_HASWRITEVERF = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i64 0, align 8
@NFSX_UNSIGNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"commit\00", align 1
@NFS_OP_PUTFH = common dso_local global i64 0, align 8
@NFS_OP_COMMIT = common dso_local global i64 0, align 8
@NFS_OP_GETATTR = common dso_local global i64 0, align 8
@nfs_getattr_bitmap = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NFSPROC4_COMPOUND = common dso_local global i32 0, align 4
@NFSERR_STALEWRITEVERF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_commit_rpc(%struct.TYPE_13__* %0, i64 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.nfsmount*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.nfsm_chain, align 4
  %22 = alloca %struct.nfsm_chain, align 4
  %23 = alloca %struct.nfsreq_secinfo_args, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %25 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_13__* %24)
  store %struct.nfsmount* %25, %struct.nfsmount** %12, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %30 = icmp ne %struct.nfsmount* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %5
  %32 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %33 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  br label %36

35:                                               ; preds = %5
  br label %36

36:                                               ; preds = %35, %31
  %37 = phi i32 [ %34, %31 ], [ 0, %35 ]
  %38 = call i32 @FSDBG(i32 521, %struct.TYPE_13__* %26, i64 %27, i64 %28, i32 %37)
  %39 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %40 = call i64 @nfs_mount_gone(%struct.nfsmount* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @ENXIO, align 4
  store i32 %43, i32* %6, align 4
  br label %198

44:                                               ; preds = %36
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @NFS_FFLAG_TRIGGER_REFERRAL, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %6, align 4
  br label %198

54:                                               ; preds = %44
  %55 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %56 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @NFSSTA_HASWRITEVERF, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  store i32 0, i32* %6, align 4
  br label %198

62:                                               ; preds = %54
  %63 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %64 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %16, align 4
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* @UINT32_MAX, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i64 0, i64* %20, align 8
  br label %72

70:                                               ; preds = %62
  %71 = load i64, i64* %9, align 8
  store i64 %71, i64* %20, align 8
  br label %72

72:                                               ; preds = %70, %69
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %74 = call i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args* %23, %struct.TYPE_13__* %73, i32* null, i32 0, i32* null, i32 0)
  %75 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %21)
  %76 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %22)
  store i32 3, i32* %17, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* @NFSX_UNSIGNED, align 4
  %79 = mul nsw i32 19, %78
  %80 = call i32 @nfsm_chain_build_alloc_init(i32 %77, %struct.nfsm_chain* %21, i32 %79)
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %83 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %17, align 4
  %86 = call i32 @nfsm_chain_add_compound_header(i32 %81, %struct.nfsm_chain* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %85)
  %87 = load i32, i32* %17, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %17, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i64, i64* @NFS_OP_PUTFH, align 8
  %91 = call i32 @nfsm_chain_add_32(i32 %89, %struct.nfsm_chain* %21, i64 %90)
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %16, align 4
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @nfsm_chain_add_fh(i32 %92, %struct.nfsm_chain* %21, i32 %93, i32 %96, i32 %99)
  %101 = load i32, i32* %17, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %17, align 4
  %103 = load i32, i32* %13, align 4
  %104 = load i64, i64* @NFS_OP_COMMIT, align 8
  %105 = call i32 @nfsm_chain_add_32(i32 %103, %struct.nfsm_chain* %21, i64 %104)
  %106 = load i32, i32* %13, align 4
  %107 = load i64, i64* %8, align 8
  %108 = call i32 @nfsm_chain_add_64(i32 %106, %struct.nfsm_chain* %21, i64 %107)
  %109 = load i32, i32* %13, align 4
  %110 = load i64, i64* %20, align 8
  %111 = call i32 @nfsm_chain_add_32(i32 %109, %struct.nfsm_chain* %21, i64 %110)
  %112 = load i32, i32* %17, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %17, align 4
  %114 = load i32, i32* %13, align 4
  %115 = load i64, i64* @NFS_OP_GETATTR, align 8
  %116 = call i32 @nfsm_chain_add_32(i32 %114, %struct.nfsm_chain* %21, i64 %115)
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* @nfs_getattr_bitmap, align 4
  %119 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %121 = call i32 @nfsm_chain_add_bitmap_supported(i32 %117, %struct.nfsm_chain* %21, i32 %118, %struct.nfsmount* %119, %struct.TYPE_13__* %120)
  %122 = load i32, i32* %13, align 4
  %123 = call i32 @nfsm_chain_build_done(i32 %122, %struct.nfsm_chain* %21)
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %17, align 4
  %126 = icmp eq i32 %125, 0
  %127 = zext i1 %126 to i32
  %128 = load i32, i32* @EPROTO, align 4
  %129 = call i32 @nfsm_assert(i32 %124, i32 %127, i32 %128)
  %130 = load i32, i32* %13, align 4
  %131 = call i32 @nfsmout_if(i32 %130)
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %133 = load i32, i32* @NFSPROC4_COMPOUND, align 4
  %134 = call i32 (...) @current_thread()
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @nfs_request2(%struct.TYPE_13__* %132, i32* null, %struct.nfsm_chain* %21, i32 %133, i32 %134, i32 %135, %struct.nfsreq_secinfo_args* %23, i32 0, %struct.nfsm_chain* %22, i64* %18, i32* %15)
  store i32 %136, i32* %13, align 4
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %138 = call i32 @nfs_node_lock(%struct.TYPE_13__* %137)
  store i32 %138, i32* %14, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %72
  %141 = load i32, i32* %14, align 4
  store i32 %141, i32* %13, align 4
  br label %142

142:                                              ; preds = %140, %72
  %143 = load i32, i32* %13, align 4
  %144 = call i32 @nfsm_chain_skip_tag(i32 %143, %struct.nfsm_chain* %22)
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* %17, align 4
  %147 = call i32 @nfsm_chain_get_32(i32 %145, %struct.nfsm_chain* %22, i32 %146)
  %148 = load i32, i32* %13, align 4
  %149 = load i64, i64* @NFS_OP_PUTFH, align 8
  %150 = call i32 @nfsm_chain_op_check(i32 %148, %struct.nfsm_chain* %22, i64 %149)
  %151 = load i32, i32* %13, align 4
  %152 = load i64, i64* @NFS_OP_COMMIT, align 8
  %153 = call i32 @nfsm_chain_op_check(i32 %151, %struct.nfsm_chain* %22, i64 %152)
  %154 = load i32, i32* %13, align 4
  %155 = load i64, i64* %19, align 8
  %156 = call i32 @nfsm_chain_get_64(i32 %154, %struct.nfsm_chain* %22, i64 %155)
  %157 = load i32, i32* %13, align 4
  %158 = load i64, i64* @NFS_OP_GETATTR, align 8
  %159 = call i32 @nfsm_chain_op_check(i32 %157, %struct.nfsm_chain* %22, i64 %158)
  %160 = load i32, i32* %13, align 4
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %162 = load i32, i32* %16, align 4
  %163 = call i32 @nfsm_chain_loadattr(i32 %160, %struct.nfsm_chain* %22, %struct.TYPE_13__* %161, i32 %162, i64* %18)
  %164 = load i32, i32* %14, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %142
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %168 = call i32 @nfs_node_unlock(%struct.TYPE_13__* %167)
  br label %169

169:                                              ; preds = %166, %142
  %170 = load i32, i32* %13, align 4
  %171 = call i32 @nfsmout_if(i32 %170)
  %172 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %173 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %172, i32 0, i32 3
  %174 = call i32 @lck_mtx_lock(i32* %173)
  %175 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %176 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* %19, align 8
  %179 = icmp ne i64 %177, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %169
  %181 = load i64, i64* %19, align 8
  %182 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %183 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %182, i32 0, i32 2
  store i64 %181, i64* %183, align 8
  br label %184

184:                                              ; preds = %180, %169
  %185 = load i64, i64* %11, align 8
  %186 = load i64, i64* %19, align 8
  %187 = icmp ne i64 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %184
  %189 = load i32, i32* @NFSERR_STALEWRITEVERF, align 4
  store i32 %189, i32* %13, align 4
  br label %190

190:                                              ; preds = %188, %184
  %191 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %192 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %191, i32 0, i32 3
  %193 = call i32 @lck_mtx_unlock(i32* %192)
  br label %194

194:                                              ; preds = %190
  %195 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %21)
  %196 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %22)
  %197 = load i32, i32* %13, align 4
  store i32 %197, i32* %6, align 4
  br label %198

198:                                              ; preds = %194, %61, %52, %42
  %199 = load i32, i32* %6, align 4
  ret i32 %199
}

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_13__*) #1

declare dso_local i32 @FSDBG(i32, %struct.TYPE_13__*, i64, i64, i32) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args*, %struct.TYPE_13__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @nfsm_chain_null(%struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_build_alloc_init(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_add_compound_header(i32, %struct.nfsm_chain*, i8*, i32, i32) #1

declare dso_local i32 @nfsm_chain_add_32(i32, %struct.nfsm_chain*, i64) #1

declare dso_local i32 @nfsm_chain_add_fh(i32, %struct.nfsm_chain*, i32, i32, i32) #1

declare dso_local i32 @nfsm_chain_add_64(i32, %struct.nfsm_chain*, i64) #1

declare dso_local i32 @nfsm_chain_add_bitmap_supported(i32, %struct.nfsm_chain*, i32, %struct.nfsmount*, %struct.TYPE_13__*) #1

declare dso_local i32 @nfsm_chain_build_done(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_assert(i32, i32, i32) #1

declare dso_local i32 @nfsmout_if(i32) #1

declare dso_local i32 @nfs_request2(%struct.TYPE_13__*, i32*, %struct.nfsm_chain*, i32, i32, i32, %struct.nfsreq_secinfo_args*, i32, %struct.nfsm_chain*, i64*, i32*) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @nfs_node_lock(%struct.TYPE_13__*) #1

declare dso_local i32 @nfsm_chain_skip_tag(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_get_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_op_check(i32, %struct.nfsm_chain*, i64) #1

declare dso_local i32 @nfsm_chain_get_64(i32, %struct.nfsm_chain*, i64) #1

declare dso_local i32 @nfsm_chain_loadattr(i32, %struct.nfsm_chain*, %struct.TYPE_13__*, i32, i64*) #1

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_13__*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @nfsm_chain_cleanup(%struct.nfsm_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
