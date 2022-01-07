; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_read_rpc_async.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_read_rpc_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.nfsreq_cbinfo = type { i32 }
%struct.nfsreq = type { i32 }
%struct.nfsmount = type { i32, i32 }
%struct.nfsm_chain = type { i32 }
%struct.nfsreq_secinfo_args = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@NFS_FFLAG_TRIGGER_REFERRAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NFSX_UNSIGNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1
@NFS_OP_PUTFH = common dso_local global i64 0, align 8
@NFS_OP_READ = common dso_local global i64 0, align 8
@NFS_OP_GETATTR = common dso_local global i64 0, align 8
@nfs_getattr_bitmap = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NFSPROC4_COMPOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_read_rpc_async(%struct.TYPE_10__* %0, i32 %1, i64 %2, i32 %3, i32 %4, %struct.nfsreq_cbinfo* %5, %struct.nfsreq** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nfsreq_cbinfo*, align 8
  %15 = alloca %struct.nfsreq**, align 8
  %16 = alloca %struct.nfsmount*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.nfsm_chain, align 4
  %22 = alloca %struct.nfsreq_secinfo_args, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.nfsreq_cbinfo* %5, %struct.nfsreq_cbinfo** %14, align 8
  store %struct.nfsreq** %6, %struct.nfsreq*** %15, align 8
  store i32 0, i32* %17, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %24 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_10__* %23)
  store %struct.nfsmount* %24, %struct.nfsmount** %16, align 8
  %25 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %26 = call i64 @nfs_mount_gone(%struct.nfsmount* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %7
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %8, align 4
  br label %118

30:                                               ; preds = %7
  %31 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %32 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %18, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @NFS_FFLAG_TRIGGER_REFERRAL, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %8, align 4
  br label %118

43:                                               ; preds = %30
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %45 = call i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args* %22, %struct.TYPE_10__* %44, i32* null, i32 0, i32* null, i32 0)
  %46 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %21)
  store i32 3, i32* %19, align 4
  %47 = load i32, i32* %17, align 4
  %48 = load i32, i32* @NFSX_UNSIGNED, align 4
  %49 = mul nsw i32 22, %48
  %50 = call i32 @nfsm_chain_build_alloc_init(i32 %47, %struct.nfsm_chain* %21, i32 %49)
  %51 = load i32, i32* %17, align 4
  %52 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %53 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %19, align 4
  %56 = call i32 @nfsm_chain_add_compound_header(i32 %51, %struct.nfsm_chain* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load i32, i32* %19, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %19, align 4
  %59 = load i32, i32* %17, align 4
  %60 = load i64, i64* @NFS_OP_PUTFH, align 8
  %61 = call i32 @nfsm_chain_add_32(i32 %59, %struct.nfsm_chain* %21, i64 %60)
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* %18, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @nfsm_chain_add_fh(i32 %62, %struct.nfsm_chain* %21, i32 %63, i32 %66, i32 %69)
  %71 = load i32, i32* %19, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %19, align 4
  %73 = load i32, i32* %17, align 4
  %74 = load i64, i64* @NFS_OP_READ, align 8
  %75 = call i32 @nfsm_chain_add_32(i32 %73, %struct.nfsm_chain* %21, i64 %74)
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @nfs_get_stateid(%struct.TYPE_10__* %76, i32 %77, i32 %78, i32* %20)
  %80 = load i32, i32* %17, align 4
  %81 = call i32 @nfsm_chain_add_stateid(i32 %80, %struct.nfsm_chain* %21, i32* %20)
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @nfsm_chain_add_64(i32 %82, %struct.nfsm_chain* %21, i32 %83)
  %85 = load i32, i32* %17, align 4
  %86 = load i64, i64* %11, align 8
  %87 = call i32 @nfsm_chain_add_32(i32 %85, %struct.nfsm_chain* %21, i64 %86)
  %88 = load i32, i32* %19, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %19, align 4
  %90 = load i32, i32* %17, align 4
  %91 = load i64, i64* @NFS_OP_GETATTR, align 8
  %92 = call i32 @nfsm_chain_add_32(i32 %90, %struct.nfsm_chain* %21, i64 %91)
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* @nfs_getattr_bitmap, align 4
  %95 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %97 = call i32 @nfsm_chain_add_bitmap_supported(i32 %93, %struct.nfsm_chain* %21, i32 %94, %struct.nfsmount* %95, %struct.TYPE_10__* %96)
  %98 = load i32, i32* %17, align 4
  %99 = call i32 @nfsm_chain_build_done(i32 %98, %struct.nfsm_chain* %21)
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* %19, align 4
  %102 = icmp eq i32 %101, 0
  %103 = zext i1 %102 to i32
  %104 = load i32, i32* @EPROTO, align 4
  %105 = call i32 @nfsm_assert(i32 %100, i32 %103, i32 %104)
  %106 = load i32, i32* %17, align 4
  %107 = call i32 @nfsmout_if(i32 %106)
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %109 = load i32, i32* @NFSPROC4_COMPOUND, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load %struct.nfsreq_cbinfo*, %struct.nfsreq_cbinfo** %14, align 8
  %113 = load %struct.nfsreq**, %struct.nfsreq*** %15, align 8
  %114 = call i32 @nfs_request_async(%struct.TYPE_10__* %108, i32* null, %struct.nfsm_chain* %21, i32 %109, i32 %110, i32 %111, %struct.nfsreq_secinfo_args* %22, i32 0, %struct.nfsreq_cbinfo* %112, %struct.nfsreq** %113)
  store i32 %114, i32* %17, align 4
  br label %115

115:                                              ; preds = %43
  %116 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %21)
  %117 = load i32, i32* %17, align 4
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %115, %41, %28
  %119 = load i32, i32* %8, align 4
  ret i32 %119
}

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_10__*) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args*, %struct.TYPE_10__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @nfsm_chain_null(%struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_build_alloc_init(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_add_compound_header(i32, %struct.nfsm_chain*, i8*, i32, i32) #1

declare dso_local i32 @nfsm_chain_add_32(i32, %struct.nfsm_chain*, i64) #1

declare dso_local i32 @nfsm_chain_add_fh(i32, %struct.nfsm_chain*, i32, i32, i32) #1

declare dso_local i32 @nfs_get_stateid(%struct.TYPE_10__*, i32, i32, i32*) #1

declare dso_local i32 @nfsm_chain_add_stateid(i32, %struct.nfsm_chain*, i32*) #1

declare dso_local i32 @nfsm_chain_add_64(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_add_bitmap_supported(i32, %struct.nfsm_chain*, i32, %struct.nfsmount*, %struct.TYPE_10__*) #1

declare dso_local i32 @nfsm_chain_build_done(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_assert(i32, i32, i32) #1

declare dso_local i32 @nfsmout_if(i32) #1

declare dso_local i32 @nfs_request_async(%struct.TYPE_10__*, i32*, %struct.nfsm_chain*, i32, i32, i32, %struct.nfsreq_secinfo_args*, i32, %struct.nfsreq_cbinfo*, %struct.nfsreq**) #1

declare dso_local i32 @nfsm_chain_cleanup(%struct.nfsm_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
