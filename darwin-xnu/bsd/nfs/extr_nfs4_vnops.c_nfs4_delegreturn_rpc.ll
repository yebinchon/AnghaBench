; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_delegreturn_rpc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_delegreturn_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmount = type { i32, i32, i32 }
%struct.nfs_stateid = type { i32 }
%struct.nfsm_chain = type { i32 }
%struct.nfsreq_secinfo_args = type { i32 }

@NFSX_UNSIGNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"delegreturn\00", align 1
@NFS_OP_PUTFH = common dso_local global i32 0, align 4
@NFS_OP_DELEGRETURN = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NFSPROC4_COMPOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_delegreturn_rpc(%struct.nfsmount* %0, i32* %1, i32 %2, %struct.nfs_stateid* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.nfsmount*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nfs_stateid*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.nfsm_chain, align 4
  %20 = alloca %struct.nfsm_chain, align 4
  %21 = alloca %struct.nfsreq_secinfo_args, align 4
  store %struct.nfsmount* %0, %struct.nfsmount** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.nfs_stateid* %3, %struct.nfs_stateid** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args* %21, i32* null, i32* %22, i32 %23, i32* null, i32 0)
  %25 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %19)
  %26 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %20)
  store i32 2, i32* %17, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* @NFSX_UNSIGNED, align 4
  %29 = mul nsw i32 16, %28
  %30 = call i32 @nfsm_chain_build_alloc_init(i32 %27, %struct.nfsm_chain* %19, i32 %29)
  %31 = load i32, i32* %15, align 4
  %32 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %33 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %17, align 4
  %36 = call i32 @nfsm_chain_add_compound_header(i32 %31, %struct.nfsm_chain* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load i32, i32* %17, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* @NFS_OP_PUTFH, align 4
  %41 = call i32 @nfsm_chain_add_32(i32 %39, %struct.nfsm_chain* %19, i32 %40)
  %42 = load i32, i32* %15, align 4
  %43 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %44 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @nfsm_chain_add_fh(i32 %42, %struct.nfsm_chain* %19, i32 %45, i32* %46, i32 %47)
  %49 = load i32, i32* %17, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* @NFS_OP_DELEGRETURN, align 4
  %53 = call i32 @nfsm_chain_add_32(i32 %51, %struct.nfsm_chain* %19, i32 %52)
  %54 = load i32, i32* %15, align 4
  %55 = load %struct.nfs_stateid*, %struct.nfs_stateid** %11, align 8
  %56 = call i32 @nfsm_chain_add_stateid(i32 %54, %struct.nfsm_chain* %19, %struct.nfs_stateid* %55)
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @nfsm_chain_build_done(i32 %57, %struct.nfsm_chain* %19)
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %17, align 4
  %61 = icmp eq i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* @EPROTO, align 4
  %64 = call i32 @nfsm_assert(i32 %59, i32 %62, i32 %63)
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @nfsmout_if(i32 %65)
  %67 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %68 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @NFSPROC4_COMPOUND, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @nfs_request2(i32* null, i32 %69, %struct.nfsm_chain* %19, i32 %70, i32 %71, i32 %72, %struct.nfsreq_secinfo_args* %21, i32 %73, %struct.nfsm_chain* %20, i32* %18, i32* %16)
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = call i32 @nfsm_chain_skip_tag(i32 %75, %struct.nfsm_chain* %20)
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %17, align 4
  %79 = call i32 @nfsm_chain_get_32(i32 %77, %struct.nfsm_chain* %20, i32 %78)
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* @NFS_OP_PUTFH, align 4
  %82 = call i32 @nfsm_chain_op_check(i32 %80, %struct.nfsm_chain* %20, i32 %81)
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* @NFS_OP_DELEGRETURN, align 4
  %85 = call i32 @nfsm_chain_op_check(i32 %83, %struct.nfsm_chain* %20, i32 %84)
  br label %86

86:                                               ; preds = %7
  %87 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %19)
  %88 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %20)
  %89 = load i32, i32* %15, align 4
  ret i32 %89
}

declare dso_local i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args*, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @nfsm_chain_null(%struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_build_alloc_init(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_add_compound_header(i32, %struct.nfsm_chain*, i8*, i32, i32) #1

declare dso_local i32 @nfsm_chain_add_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_add_fh(i32, %struct.nfsm_chain*, i32, i32*, i32) #1

declare dso_local i32 @nfsm_chain_add_stateid(i32, %struct.nfsm_chain*, %struct.nfs_stateid*) #1

declare dso_local i32 @nfsm_chain_build_done(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_assert(i32, i32, i32) #1

declare dso_local i32 @nfsmout_if(i32) #1

declare dso_local i32 @nfs_request2(i32*, i32, %struct.nfsm_chain*, i32, i32, i32, %struct.nfsreq_secinfo_args*, i32, %struct.nfsm_chain*, i32*, i32*) #1

declare dso_local i32 @nfsm_chain_skip_tag(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_get_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_op_check(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_cleanup(%struct.nfsm_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
