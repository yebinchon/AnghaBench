; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs3_read_rpc_async.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs3_read_rpc_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.nfsreq_cbinfo = type { i32 }
%struct.nfsreq = type { i32 }
%struct.nfsmount = type { i32 }
%struct.nfsm_chain = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@NFSX_UNSIGNED = common dso_local global i32 0, align 4
@NFS_VER3 = common dso_local global i32 0, align 4
@NFSPROC_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3_read_rpc_async(%struct.TYPE_5__* %0, i64 %1, i64 %2, i32 %3, i32 %4, %struct.nfsreq_cbinfo* %5, %struct.nfsreq** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nfsreq_cbinfo*, align 8
  %15 = alloca %struct.nfsreq**, align 8
  %16 = alloca %struct.nfsmount*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.nfsm_chain, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.nfsreq_cbinfo* %5, %struct.nfsreq_cbinfo** %14, align 8
  store %struct.nfsreq** %6, %struct.nfsreq*** %15, align 8
  store i32 0, i32* %17, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %21 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_5__* %20)
  store %struct.nfsmount* %21, %struct.nfsmount** %16, align 8
  %22 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %23 = call i64 @nfs_mount_gone(%struct.nfsmount* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %8, align 4
  br label %83

27:                                               ; preds = %7
  %28 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %29 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %18, align 4
  %31 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %19)
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* %18, align 4
  %34 = call i64 @NFSX_FH(i32 %33)
  %35 = load i32, i32* @NFSX_UNSIGNED, align 4
  %36 = mul nsw i32 3, %35
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %34, %37
  %39 = call i32 @nfsm_chain_build_alloc_init(i32 %32, %struct.nfsm_chain* %19, i64 %38)
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* %18, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @nfsm_chain_add_fh(i32 %40, %struct.nfsm_chain* %19, i32 %41, i32 %44, i32 %47)
  %49 = load i32, i32* %18, align 4
  %50 = load i32, i32* @NFS_VER3, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %27
  %53 = load i32, i32* %17, align 4
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @nfsm_chain_add_64(i32 %53, %struct.nfsm_chain* %19, i64 %54)
  %56 = load i32, i32* %17, align 4
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @nfsm_chain_add_32(i32 %56, %struct.nfsm_chain* %19, i64 %57)
  br label %68

59:                                               ; preds = %27
  %60 = load i32, i32* %17, align 4
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @nfsm_chain_add_32(i32 %60, %struct.nfsm_chain* %19, i64 %61)
  %63 = load i32, i32* %17, align 4
  %64 = load i64, i64* %11, align 8
  %65 = call i32 @nfsm_chain_add_32(i32 %63, %struct.nfsm_chain* %19, i64 %64)
  %66 = load i32, i32* %17, align 4
  %67 = call i32 @nfsm_chain_add_32(i32 %66, %struct.nfsm_chain* %19, i64 0)
  br label %68

68:                                               ; preds = %59, %52
  %69 = load i32, i32* %17, align 4
  %70 = call i32 @nfsm_chain_build_done(i32 %69, %struct.nfsm_chain* %19)
  %71 = load i32, i32* %17, align 4
  %72 = call i32 @nfsmout_if(i32 %71)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %74 = load i32, i32* @NFSPROC_READ, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load %struct.nfsreq_cbinfo*, %struct.nfsreq_cbinfo** %14, align 8
  %78 = load %struct.nfsreq**, %struct.nfsreq*** %15, align 8
  %79 = call i32 @nfs_request_async(%struct.TYPE_5__* %73, i32* null, %struct.nfsm_chain* %19, i32 %74, i32 %75, i32 %76, i32* null, i32 0, %struct.nfsreq_cbinfo* %77, %struct.nfsreq** %78)
  store i32 %79, i32* %17, align 4
  br label %80

80:                                               ; preds = %68
  %81 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %19)
  %82 = load i32, i32* %17, align 4
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %80, %25
  %84 = load i32, i32* %8, align 4
  ret i32 %84
}

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_5__*) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @nfsm_chain_null(%struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_build_alloc_init(i32, %struct.nfsm_chain*, i64) #1

declare dso_local i64 @NFSX_FH(i32) #1

declare dso_local i32 @nfsm_chain_add_fh(i32, %struct.nfsm_chain*, i32, i32, i32) #1

declare dso_local i32 @nfsm_chain_add_64(i32, %struct.nfsm_chain*, i64) #1

declare dso_local i32 @nfsm_chain_add_32(i32, %struct.nfsm_chain*, i64) #1

declare dso_local i32 @nfsm_chain_build_done(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsmout_if(i32) #1

declare dso_local i32 @nfs_request_async(%struct.TYPE_5__*, i32*, %struct.nfsm_chain*, i32, i32, i32, i32*, i32, %struct.nfsreq_cbinfo*, %struct.nfsreq**) #1

declare dso_local i32 @nfsm_chain_cleanup(%struct.nfsm_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
