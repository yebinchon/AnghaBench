; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_gss.c_rpc_gss_integ_data_create.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_gss.c_rpc_gss_integ_data_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.nfsm_chain = type { i32 }

@NFSX_UNSIGNED = common dso_local global i64 0, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"gss_krb5_get_mic_mbuf failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i64, i64*)* @rpc_gss_integ_data_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rpc_gss_integ_data_create(i32 %0, i32* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_4__, align 4
  %14 = alloca %struct.nfsm_chain, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @nfs_gss_mchain_length(i32 %16)
  store i64 %17, i64* %12, align 8
  %18 = load i64*, i64** %9, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i64, i64* %12, align 8
  %22 = load i64*, i64** %9, align 8
  store i64 %21, i64* %22, align 8
  br label %23

23:                                               ; preds = %20, %4
  %24 = load i32*, i32** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @rpc_gss_data_create(i32* %24, i64 %25)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i64, i64* %10, align 8
  store i64 %30, i64* %5, align 8
  br label %88

31:                                               ; preds = %23
  %32 = load i64, i64* @NFSX_UNSIGNED, align 8
  %33 = load i64, i64* %12, align 8
  %34 = add nsw i64 %33, %32
  store i64 %34, i64* %12, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %12, align 8
  %39 = call i64 @gss_krb5_get_mic_mbuf(i64* %10, i32 %35, i32 0, i32 %37, i32 0, i64 %38, %struct.TYPE_4__* %13)
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* @GSS_S_COMPLETE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %31
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %44)
  %46 = load i64, i64* %10, align 8
  store i64 %46, i64* %5, align 8
  br label %88

47:                                               ; preds = %31
  %48 = load i32*, i32** %7, align 8
  %49 = load i64, i64* %12, align 8
  %50 = call i64 @rpc_gss_prepend_32(i32* %48, i64 %49)
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %10, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i64, i64* %10, align 8
  store i64 %54, i64* %5, align 8
  br label %88

55:                                               ; preds = %47
  %56 = load i64, i64* %10, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @nfsm_chain_dissect_init(i64 %56, %struct.nfsm_chain* %14, i32 %58)
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* @NFSX_UNSIGNED, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @nfsm_chain_adv(i64 %60, %struct.nfsm_chain* %14, i64 %63)
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @nfsm_chain_finish_mbuf(i64 %65, %struct.nfsm_chain* %14)
  %67 = load i64, i64* %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @nfsm_chain_add_32(i64 %67, %struct.nfsm_chain* %14, i32 %69)
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @nfsm_chain_add_opaque(i64 %71, %struct.nfsm_chain* %14, i32 %73, i32 %75)
  %77 = load i64, i64* %10, align 8
  %78 = call i32 @nfsm_chain_build_done(i64 %77, %struct.nfsm_chain* %14)
  %79 = call i32 @gss_release_buffer(i32* null, %struct.TYPE_4__* %13)
  %80 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %14, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %81, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load i64, i64* %10, align 8
  store i64 %87, i64* %5, align 8
  br label %88

88:                                               ; preds = %55, %53, %43, %29
  %89 = load i64, i64* %5, align 8
  ret i64 %89
}

declare dso_local i64 @nfs_gss_mchain_length(i32) #1

declare dso_local i64 @rpc_gss_data_create(i32*, i64) #1

declare dso_local i64 @gss_krb5_get_mic_mbuf(i64*, i32, i32, i32, i32, i64, %struct.TYPE_4__*) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i64 @rpc_gss_prepend_32(i32*, i64) #1

declare dso_local i32 @nfsm_chain_dissect_init(i64, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_adv(i64, %struct.nfsm_chain*, i64) #1

declare dso_local i32 @nfsm_chain_finish_mbuf(i64, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_add_32(i64, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_add_opaque(i64, %struct.nfsm_chain*, i32, i32) #1

declare dso_local i32 @nfsm_chain_build_done(i64, %struct.nfsm_chain*) #1

declare dso_local i32 @gss_release_buffer(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
