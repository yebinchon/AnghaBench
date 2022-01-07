; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_open_confirm_rpc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_open_confirm_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmount = type { i32, i32 }
%struct.nfs_open_owner = type { i32 }
%struct.nfs_vattr = type { i32 }
%struct.nfsm_chain = type { i32 }
%struct.nfsreq_secinfo_args = type { i32 }

@NFSX_UNSIGNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"open_confirm\00", align 1
@NFS_OP_PUTFH = common dso_local global i32 0, align 4
@NFS_OP_OPEN_CONFIRM = common dso_local global i32 0, align 4
@NFS_OP_GETATTR = common dso_local global i32 0, align 4
@nfs_getattr_bitmap = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NFSPROC4_COMPOUND = common dso_local global i32 0, align 4
@R_NOINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_open_confirm_rpc(%struct.nfsmount* %0, i32 %1, i32* %2, i32 %3, %struct.nfs_open_owner* %4, i32* %5, i32 %6, i32 %7, %struct.nfs_vattr* %8, i32* %9) #0 {
  %11 = alloca %struct.nfsmount*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.nfs_open_owner*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.nfs_vattr*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.nfsm_chain, align 4
  %22 = alloca %struct.nfsm_chain, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.nfsreq_secinfo_args, align 4
  store %struct.nfsmount* %0, %struct.nfsmount** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store %struct.nfs_open_owner* %4, %struct.nfs_open_owner** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store %struct.nfs_vattr* %8, %struct.nfs_vattr** %19, align 8
  store i32* %9, i32** %20, align 8
  store i32 0, i32* %23, align 4
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args* %26, i32 %27, i32* null, i32 0, i32* null, i32 0)
  %29 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %21)
  %30 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %22)
  store i32 3, i32* %25, align 4
  %31 = load i32, i32* %23, align 4
  %32 = load i32, i32* @NFSX_UNSIGNED, align 4
  %33 = mul nsw i32 23, %32
  %34 = call i32 @nfsm_chain_build_alloc_init(i32 %31, %struct.nfsm_chain* %21, i32 %33)
  %35 = load i32, i32* %23, align 4
  %36 = load %struct.nfsmount*, %struct.nfsmount** %11, align 8
  %37 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %25, align 4
  %40 = call i32 @nfsm_chain_add_compound_header(i32 %35, %struct.nfsm_chain* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* %25, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %25, align 4
  %43 = load i32, i32* %23, align 4
  %44 = load i32, i32* @NFS_OP_PUTFH, align 4
  %45 = call i32 @nfsm_chain_add_32(i32 %43, %struct.nfsm_chain* %21, i32 %44)
  %46 = load i32, i32* %23, align 4
  %47 = load %struct.nfsmount*, %struct.nfsmount** %11, align 8
  %48 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %13, align 8
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @nfsm_chain_add_fh(i32 %46, %struct.nfsm_chain* %21, i32 %49, i32* %50, i32 %51)
  %53 = load i32, i32* %25, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %25, align 4
  %55 = load i32, i32* %23, align 4
  %56 = load i32, i32* @NFS_OP_OPEN_CONFIRM, align 4
  %57 = call i32 @nfsm_chain_add_32(i32 %55, %struct.nfsm_chain* %21, i32 %56)
  %58 = load i32, i32* %23, align 4
  %59 = load i32*, i32** %16, align 8
  %60 = call i32 @nfsm_chain_add_stateid(i32 %58, %struct.nfsm_chain* %21, i32* %59)
  %61 = load i32, i32* %23, align 4
  %62 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %15, align 8
  %63 = getelementptr inbounds %struct.nfs_open_owner, %struct.nfs_open_owner* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @nfsm_chain_add_32(i32 %61, %struct.nfsm_chain* %21, i32 %64)
  %66 = load i32, i32* %25, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %25, align 4
  %68 = load i32, i32* %23, align 4
  %69 = load i32, i32* @NFS_OP_GETATTR, align 4
  %70 = call i32 @nfsm_chain_add_32(i32 %68, %struct.nfsm_chain* %21, i32 %69)
  %71 = load i32, i32* %23, align 4
  %72 = load i32, i32* @nfs_getattr_bitmap, align 4
  %73 = load %struct.nfsmount*, %struct.nfsmount** %11, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @nfsm_chain_add_bitmap_supported(i32 %71, %struct.nfsm_chain* %21, i32 %72, %struct.nfsmount* %73, i32 %74)
  %76 = load i32, i32* %23, align 4
  %77 = call i32 @nfsm_chain_build_done(i32 %76, %struct.nfsm_chain* %21)
  %78 = load i32, i32* %23, align 4
  %79 = load i32, i32* %25, align 4
  %80 = icmp eq i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* @EPROTO, align 4
  %83 = call i32 @nfsm_assert(i32 %78, i32 %81, i32 %82)
  %84 = load i32, i32* %23, align 4
  %85 = call i32 @nfsmout_if(i32 %84)
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @NFSPROC4_COMPOUND, align 4
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* %18, align 4
  %90 = load i32, i32* @R_NOINTR, align 4
  %91 = load i32*, i32** %20, align 8
  %92 = call i32 @nfs_request2(i32 %86, i32* null, %struct.nfsm_chain* %21, i32 %87, i32 %88, i32 %89, %struct.nfsreq_secinfo_args* %26, i32 %90, %struct.nfsm_chain* %22, i32* %91, i32* %24)
  store i32 %92, i32* %23, align 4
  %93 = load i32, i32* %23, align 4
  %94 = call i32 @nfsm_chain_skip_tag(i32 %93, %struct.nfsm_chain* %22)
  %95 = load i32, i32* %23, align 4
  %96 = load i32, i32* %25, align 4
  %97 = call i32 @nfsm_chain_get_32(i32 %95, %struct.nfsm_chain* %22, i32 %96)
  %98 = load i32, i32* %23, align 4
  %99 = load i32, i32* @NFS_OP_PUTFH, align 4
  %100 = call i32 @nfsm_chain_op_check(i32 %98, %struct.nfsm_chain* %22, i32 %99)
  %101 = load i32, i32* %23, align 4
  %102 = call i32 @nfsmout_if(i32 %101)
  %103 = load i32, i32* %23, align 4
  %104 = load i32, i32* @NFS_OP_OPEN_CONFIRM, align 4
  %105 = call i32 @nfsm_chain_op_check(i32 %103, %struct.nfsm_chain* %22, i32 %104)
  %106 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %15, align 8
  %107 = load i32, i32* %23, align 4
  %108 = call i32 @nfs_owner_seqid_increment(%struct.nfs_open_owner* %106, i32* null, i32 %107)
  %109 = load i32, i32* %23, align 4
  %110 = load i32*, i32** %16, align 8
  %111 = call i32 @nfsm_chain_get_stateid(i32 %109, %struct.nfsm_chain* %22, i32* %110)
  %112 = load i32, i32* %23, align 4
  %113 = load i32, i32* @NFS_OP_GETATTR, align 4
  %114 = call i32 @nfsm_chain_op_check(i32 %112, %struct.nfsm_chain* %22, i32 %113)
  %115 = load i32, i32* %23, align 4
  %116 = call i32 @nfsmout_if(i32 %115)
  %117 = load %struct.nfs_vattr*, %struct.nfs_vattr** %19, align 8
  %118 = call i32 @nfs4_parsefattr(%struct.nfsm_chain* %22, i32* null, %struct.nfs_vattr* %117, i32* null, i32* null, i32* null)
  store i32 %118, i32* %23, align 4
  br label %119

119:                                              ; preds = %10
  %120 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %21)
  %121 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %22)
  %122 = load i32, i32* %23, align 4
  ret i32 %122
}

declare dso_local i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @nfsm_chain_null(%struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_build_alloc_init(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_add_compound_header(i32, %struct.nfsm_chain*, i8*, i32, i32) #1

declare dso_local i32 @nfsm_chain_add_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_add_fh(i32, %struct.nfsm_chain*, i32, i32*, i32) #1

declare dso_local i32 @nfsm_chain_add_stateid(i32, %struct.nfsm_chain*, i32*) #1

declare dso_local i32 @nfsm_chain_add_bitmap_supported(i32, %struct.nfsm_chain*, i32, %struct.nfsmount*, i32) #1

declare dso_local i32 @nfsm_chain_build_done(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_assert(i32, i32, i32) #1

declare dso_local i32 @nfsmout_if(i32) #1

declare dso_local i32 @nfs_request2(i32, i32*, %struct.nfsm_chain*, i32, i32, i32, %struct.nfsreq_secinfo_args*, i32, %struct.nfsm_chain*, i32*, i32*) #1

declare dso_local i32 @nfsm_chain_skip_tag(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_get_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_op_check(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfs_owner_seqid_increment(%struct.nfs_open_owner*, i32*, i32) #1

declare dso_local i32 @nfsm_chain_get_stateid(i32, %struct.nfsm_chain*, i32*) #1

declare dso_local i32 @nfs4_parsefattr(%struct.nfsm_chain*, i32*, %struct.nfs_vattr*, i32*, i32*, i32*) #1

declare dso_local i32 @nfsm_chain_cleanup(%struct.nfsm_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
