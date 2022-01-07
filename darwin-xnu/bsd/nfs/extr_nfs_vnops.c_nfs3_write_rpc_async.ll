; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs3_write_rpc_async.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs3_write_rpc_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.nfsreq_cbinfo = type { i32 }
%struct.nfsreq = type { i32 }
%struct.nfsmount = type { i32 }
%struct.nfsm_chain = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@NFS_WRITE_UNSTABLE = common dso_local global i32 0, align 4
@nfs_allow_async = common dso_local global i64 0, align 8
@MNT_ASYNC = common dso_local global i32 0, align 4
@NFSX_UNSIGNED = common dso_local global i32 0, align 4
@NFS_VER3 = common dso_local global i32 0, align 4
@NFSPROC_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3_write_rpc_async(%struct.TYPE_6__* %0, i32 %1, i64 %2, i32 %3, i32 %4, i32 %5, %struct.nfsreq_cbinfo* %6, %struct.nfsreq** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nfsreq_cbinfo*, align 8
  %17 = alloca %struct.nfsreq**, align 8
  %18 = alloca %struct.nfsmount*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.nfsm_chain, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store %struct.nfsreq_cbinfo* %6, %struct.nfsreq_cbinfo** %16, align 8
  store %struct.nfsreq** %7, %struct.nfsreq*** %17, align 8
  store i32 0, i32* %20, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %24 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_6__* %23)
  store %struct.nfsmount* %24, %struct.nfsmount** %18, align 8
  %25 = load %struct.nfsmount*, %struct.nfsmount** %18, align 8
  %26 = call i64 @nfs_mount_gone(%struct.nfsmount* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %8
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %9, align 4
  br label %121

30:                                               ; preds = %8
  %31 = load %struct.nfsmount*, %struct.nfsmount** %18, align 8
  %32 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %21, align 4
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* @NFS_WRITE_UNSTABLE, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %30
  %38 = load i64, i64* @nfs_allow_async, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %42 = call i32 @NFSTOMP(%struct.TYPE_6__* %41)
  store i32 %42, i32* %19, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load i32, i32* %19, align 4
  %46 = call i32 @vfs_flags(i32 %45)
  %47 = load i32, i32* @MNT_ASYNC, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @NFS_WRITE_UNSTABLE, align 4
  store i32 %51, i32* %15, align 4
  br label %52

52:                                               ; preds = %50, %44, %40, %37, %30
  %53 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %22)
  %54 = load i32, i32* %20, align 4
  %55 = load i32, i32* %21, align 4
  %56 = call i64 @NFSX_FH(i32 %55)
  %57 = load i32, i32* @NFSX_UNSIGNED, align 4
  %58 = mul nsw i32 5, %57
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %56, %59
  %61 = load i64, i64* %12, align 8
  %62 = call i64 @nfsm_rndup(i64 %61)
  %63 = add nsw i64 %60, %62
  %64 = call i32 @nfsm_chain_build_alloc_init(i32 %54, %struct.nfsm_chain* %22, i64 %63)
  %65 = load i32, i32* %20, align 4
  %66 = load i32, i32* %21, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @nfsm_chain_add_fh(i32 %65, %struct.nfsm_chain* %22, i32 %66, i32 %69, i32 %72)
  %74 = load i32, i32* %21, align 4
  %75 = load i32, i32* @NFS_VER3, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %52
  %78 = load i32, i32* %20, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i64 @uio_offset(i32 %79)
  %81 = call i32 @nfsm_chain_add_64(i32 %78, %struct.nfsm_chain* %22, i64 %80)
  %82 = load i32, i32* %20, align 4
  %83 = load i64, i64* %12, align 8
  %84 = call i32 @nfsm_chain_add_32(i32 %82, %struct.nfsm_chain* %22, i64 %83)
  %85 = load i32, i32* %20, align 4
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = call i32 @nfsm_chain_add_32(i32 %85, %struct.nfsm_chain* %22, i64 %87)
  br label %98

89:                                               ; preds = %52
  %90 = load i32, i32* %20, align 4
  %91 = call i32 @nfsm_chain_add_32(i32 %90, %struct.nfsm_chain* %22, i64 0)
  %92 = load i32, i32* %20, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call i64 @uio_offset(i32 %93)
  %95 = call i32 @nfsm_chain_add_32(i32 %92, %struct.nfsm_chain* %22, i64 %94)
  %96 = load i32, i32* %20, align 4
  %97 = call i32 @nfsm_chain_add_32(i32 %96, %struct.nfsm_chain* %22, i64 0)
  br label %98

98:                                               ; preds = %89, %77
  %99 = load i32, i32* %20, align 4
  %100 = load i64, i64* %12, align 8
  %101 = call i32 @nfsm_chain_add_32(i32 %99, %struct.nfsm_chain* %22, i64 %100)
  %102 = load i32, i32* %20, align 4
  %103 = call i32 @nfsmout_if(i32 %102)
  %104 = load i32, i32* %11, align 4
  %105 = load i64, i64* %12, align 8
  %106 = call i32 @nfsm_chain_add_uio(%struct.nfsm_chain* %22, i32 %104, i64 %105)
  store i32 %106, i32* %20, align 4
  %107 = load i32, i32* %20, align 4
  %108 = call i32 @nfsm_chain_build_done(i32 %107, %struct.nfsm_chain* %22)
  %109 = load i32, i32* %20, align 4
  %110 = call i32 @nfsmout_if(i32 %109)
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %112 = load i32, i32* @NFSPROC_WRITE, align 4
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %14, align 4
  %115 = load %struct.nfsreq_cbinfo*, %struct.nfsreq_cbinfo** %16, align 8
  %116 = load %struct.nfsreq**, %struct.nfsreq*** %17, align 8
  %117 = call i32 @nfs_request_async(%struct.TYPE_6__* %111, i32* null, %struct.nfsm_chain* %22, i32 %112, i32 %113, i32 %114, i32* null, i32 0, %struct.nfsreq_cbinfo* %115, %struct.nfsreq** %116)
  store i32 %117, i32* %20, align 4
  br label %118

118:                                              ; preds = %98
  %119 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %22)
  %120 = load i32, i32* %20, align 4
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %118, %28
  %122 = load i32, i32* %9, align 4
  ret i32 %122
}

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_6__*) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @NFSTOMP(%struct.TYPE_6__*) #1

declare dso_local i32 @vfs_flags(i32) #1

declare dso_local i32 @nfsm_chain_null(%struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_build_alloc_init(i32, %struct.nfsm_chain*, i64) #1

declare dso_local i64 @NFSX_FH(i32) #1

declare dso_local i64 @nfsm_rndup(i64) #1

declare dso_local i32 @nfsm_chain_add_fh(i32, %struct.nfsm_chain*, i32, i32, i32) #1

declare dso_local i32 @nfsm_chain_add_64(i32, %struct.nfsm_chain*, i64) #1

declare dso_local i64 @uio_offset(i32) #1

declare dso_local i32 @nfsm_chain_add_32(i32, %struct.nfsm_chain*, i64) #1

declare dso_local i32 @nfsmout_if(i32) #1

declare dso_local i32 @nfsm_chain_add_uio(%struct.nfsm_chain*, i32, i64) #1

declare dso_local i32 @nfsm_chain_build_done(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfs_request_async(%struct.TYPE_6__*, i32*, %struct.nfsm_chain*, i32, i32, i32, i32*, i32, %struct.nfsreq_cbinfo*, %struct.nfsreq**) #1

declare dso_local i32 @nfsm_chain_cleanup(%struct.nfsm_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
