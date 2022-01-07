; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_gss.c_rpc_gss_priv_data_create.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_gss.c_rpc_gss_priv_data_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsm_chain = type { i32 }

@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@NFSX_UNSIGNED = common dso_local global i64 0, align 8
@xdrpad = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i64, i64*)* @rpc_gss_priv_data_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rpc_gss_priv_data_create(i32 %0, i32* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.nfsm_chain, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call i64 @rpc_gss_data_create(i32* %15, i64 %16)
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %10, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i64, i64* %10, align 8
  store i64 %21, i64* %5, align 8
  br label %77

22:                                               ; preds = %4
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @nfs_gss_mchain_length(i32 %24)
  store i64 %25, i64* %14, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = load i64, i64* %14, align 8
  %29 = call i64 @gss_krb5_wrap_mbuf(i64* %10, i32 %26, i32 1, i32 0, i32* %27, i32 0, i64 %28, i32* null)
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* @GSS_S_COMPLETE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i64, i64* %10, align 8
  store i64 %34, i64* %5, align 8
  br label %77

35:                                               ; preds = %22
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @nfs_gss_mchain_length(i32 %37)
  store i64 %38, i64* %14, align 8
  %39 = load i64*, i64** %9, align 8
  %40 = icmp ne i64* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i64, i64* %14, align 8
  %43 = load i64*, i64** %9, align 8
  store i64 %42, i64* %43, align 8
  br label %44

44:                                               ; preds = %41, %35
  %45 = load i64, i64* %14, align 8
  %46 = call i64 @nfsm_pad(i64 %45)
  store i64 %46, i64* %13, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i64, i64* %14, align 8
  %49 = call i64 @rpc_gss_prepend_32(i32* %47, i64 %48)
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* %10, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i64, i64* %10, align 8
  store i64 %53, i64* %5, align 8
  br label %77

54:                                               ; preds = %44
  %55 = load i64, i64* %13, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %54
  %58 = load i64, i64* %10, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @nfsm_chain_dissect_init(i64 %58, %struct.nfsm_chain* %12, i32 %60)
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* @NFSX_UNSIGNED, align 8
  %64 = load i64, i64* %14, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @nfsm_chain_adv(i64 %62, %struct.nfsm_chain* %12, i64 %65)
  %67 = load i64, i64* %10, align 8
  %68 = call i32 @nfsm_chain_finish_mbuf(i64 %67, %struct.nfsm_chain* %12)
  %69 = load i64, i64* %10, align 8
  %70 = load i32, i32* @xdrpad, align 4
  %71 = load i64, i64* %13, align 8
  %72 = call i32 @nfsm_chain_add_opaque_nopad(i64 %69, %struct.nfsm_chain* %12, i32 %70, i64 %71)
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @nfsm_chain_build_done(i64 %73, %struct.nfsm_chain* %12)
  br label %75

75:                                               ; preds = %57, %54
  %76 = load i64, i64* %10, align 8
  store i64 %76, i64* %5, align 8
  br label %77

77:                                               ; preds = %75, %52, %33, %20
  %78 = load i64, i64* %5, align 8
  ret i64 %78
}

declare dso_local i64 @rpc_gss_data_create(i32*, i64) #1

declare dso_local i64 @nfs_gss_mchain_length(i32) #1

declare dso_local i64 @gss_krb5_wrap_mbuf(i64*, i32, i32, i32, i32*, i32, i64, i32*) #1

declare dso_local i64 @nfsm_pad(i64) #1

declare dso_local i64 @rpc_gss_prepend_32(i32*, i64) #1

declare dso_local i32 @nfsm_chain_dissect_init(i64, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_adv(i64, %struct.nfsm_chain*, i64) #1

declare dso_local i32 @nfsm_chain_finish_mbuf(i64, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_add_opaque_nopad(i64, %struct.nfsm_chain*, i32, i64) #1

declare dso_local i32 @nfsm_chain_build_done(i64, %struct.nfsm_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
