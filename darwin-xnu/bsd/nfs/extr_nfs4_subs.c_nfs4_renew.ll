; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_subs.c_nfs4_renew.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_subs.c_nfs4_renew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmount = type { i32, i32, i32, i32 }
%struct.nfsm_chain = type { i32 }

@NFSX_UNSIGNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"renew\00", align 1
@NFS_OP_RENEW = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NFSPROC4_COMPOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_renew(%struct.nfsmount* %0, i32 %1) #0 {
  %3 = alloca %struct.nfsmount*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfsm_chain, align 4
  %10 = alloca %struct.nfsm_chain, align 4
  %11 = alloca i32, align 4
  store %struct.nfsmount* %0, %struct.nfsmount** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %12 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %13 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @IS_VALID_CRED(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %19 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  br label %24

21:                                               ; preds = %2
  %22 = call i32 (...) @vfs_context_kernel()
  %23 = call i32 @vfs_context_ucred(i32 %22)
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi i32 [ %20, %17 ], [ %23, %21 ]
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @kauth_cred_ref(i32 %26)
  %28 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %9)
  %29 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %10)
  store i32 1, i32* %7, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @NFSX_UNSIGNED, align 4
  %32 = mul nsw i32 8, %31
  %33 = call i32 @nfsm_chain_build_alloc_init(i32 %30, %struct.nfsm_chain* %9, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %36 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @nfsm_chain_add_compound_header(i32 %34, %struct.nfsm_chain* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @NFS_OP_RENEW, align 4
  %44 = call i32 @nfsm_chain_add_32(i32 %42, %struct.nfsm_chain* %9, i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %47 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @nfsm_chain_add_64(i32 %45, %struct.nfsm_chain* %9, i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @nfsm_chain_build_done(i32 %50, %struct.nfsm_chain* %9)
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* @EPROTO, align 4
  %57 = call i32 @nfsm_assert(i32 %52, i32 %55, i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @nfsmout_if(i32 %58)
  %60 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %61 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @NFSPROC4_COMPOUND, align 4
  %64 = call i32 (...) @current_thread()
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @nfs_request2(i32* null, i32 %62, %struct.nfsm_chain* %9, i32 %63, i32 %64, i32 %65, i32* null, i32 %66, %struct.nfsm_chain* %10, i32* %8, i32* %6)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @nfsm_chain_skip_tag(i32 %68, %struct.nfsm_chain* %10)
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @nfsm_chain_get_32(i32 %70, %struct.nfsm_chain* %10, i32 %71)
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @NFS_OP_RENEW, align 4
  %75 = call i32 @nfsm_chain_op_check(i32 %73, %struct.nfsm_chain* %10, i32 %74)
  br label %76

76:                                               ; preds = %24
  %77 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %9)
  %78 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %10)
  %79 = call i32 @kauth_cred_unref(i32* %11)
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i64 @IS_VALID_CRED(i32) #1

declare dso_local i32 @vfs_context_ucred(i32) #1

declare dso_local i32 @vfs_context_kernel(...) #1

declare dso_local i32 @kauth_cred_ref(i32) #1

declare dso_local i32 @nfsm_chain_null(%struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_build_alloc_init(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_add_compound_header(i32, %struct.nfsm_chain*, i8*, i32, i32) #1

declare dso_local i32 @nfsm_chain_add_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_add_64(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_build_done(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_assert(i32, i32, i32) #1

declare dso_local i32 @nfsmout_if(i32) #1

declare dso_local i32 @nfs_request2(i32*, i32, %struct.nfsm_chain*, i32, i32, i32, i32*, i32, %struct.nfsm_chain*, i32*, i32*) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @nfsm_chain_skip_tag(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_get_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_op_check(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_cleanup(%struct.nfsm_chain*) #1

declare dso_local i32 @kauth_cred_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
