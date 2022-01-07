; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs3_lookup_rpc_async.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs3_lookup_rpc_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.nfsreq = type { i32 }
%struct.nfsmount = type { i32 }
%struct.nfsm_chain = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@NFSX_UNSIGNED = common dso_local global i64 0, align 8
@NFSPROC_LOOKUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3_lookup_rpc_async(%struct.TYPE_5__* %0, i8* %1, i32 %2, i32 %3, %struct.nfsreq** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nfsreq**, align 8
  %12 = alloca %struct.nfsmount*, align 8
  %13 = alloca %struct.nfsm_chain, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.nfsreq** %4, %struct.nfsreq*** %11, align 8
  store i32 0, i32* %14, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %17 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_5__* %16)
  store %struct.nfsmount* %17, %struct.nfsmount** %12, align 8
  %18 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %19 = call i64 @nfs_mount_gone(%struct.nfsmount* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %6, align 4
  br label %66

23:                                               ; preds = %5
  %24 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %25 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %15, align 4
  %27 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %13)
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %15, align 4
  %30 = call i64 @NFSX_FH(i32 %29)
  %31 = load i64, i64* @NFSX_UNSIGNED, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @nfsm_rndup(i32 %33)
  %35 = add nsw i64 %32, %34
  %36 = call i32 @nfsm_chain_build_alloc_init(i32 %28, %struct.nfsm_chain* %13, i64 %35)
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @nfsm_chain_add_fh(i32 %37, %struct.nfsm_chain* %13, i32 %38, i32 %41, i32 %44)
  %46 = load i32, i32* %14, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %50 = call i32 @nfsm_chain_add_name(i32 %46, %struct.nfsm_chain* %13, i8* %47, i32 %48, %struct.nfsmount* %49)
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @nfsm_chain_build_done(i32 %51, %struct.nfsm_chain* %13)
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @nfsmout_if(i32 %53)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %56 = load i32, i32* @NFSPROC_LOOKUP, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @vfs_context_thread(i32 %57)
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @vfs_context_ucred(i32 %59)
  %61 = load %struct.nfsreq**, %struct.nfsreq*** %11, align 8
  %62 = call i32 @nfs_request_async(%struct.TYPE_5__* %55, i32* null, %struct.nfsm_chain* %13, i32 %56, i32 %58, i32 %60, i32* null, i32 0, i32* null, %struct.nfsreq** %61)
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %23
  %64 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %13)
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %63, %21
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_5__*) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @nfsm_chain_null(%struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_build_alloc_init(i32, %struct.nfsm_chain*, i64) #1

declare dso_local i64 @NFSX_FH(i32) #1

declare dso_local i64 @nfsm_rndup(i32) #1

declare dso_local i32 @nfsm_chain_add_fh(i32, %struct.nfsm_chain*, i32, i32, i32) #1

declare dso_local i32 @nfsm_chain_add_name(i32, %struct.nfsm_chain*, i8*, i32, %struct.nfsmount*) #1

declare dso_local i32 @nfsm_chain_build_done(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsmout_if(i32) #1

declare dso_local i32 @nfs_request_async(%struct.TYPE_5__*, i32*, %struct.nfsm_chain*, i32, i32, i32, i32*, i32, i32*, %struct.nfsreq**) #1

declare dso_local i32 @vfs_context_thread(i32) #1

declare dso_local i32 @vfs_context_ucred(i32) #1

declare dso_local i32 @nfsm_chain_cleanup(%struct.nfsm_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
