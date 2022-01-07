; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_scratch_get.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_scratch_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, %struct.pkthdr }
%struct.pkthdr = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@M_PKTHDR = common dso_local global i32 0, align 4
@PKTF_PRIV_GUARDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"Invalid attempt to access guarded module-private area: mbuf %p, pkt_flags 0x%x\0A\00", align 1
@mcltrace = common dso_local global i64 0, align 8
@mbuf_mlock = common dso_local global i32 0, align 4
@MC_MBUF = common dso_local global i32 0, align 4
@MB_SCVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m_scratch_get(%struct.mbuf* %0, i32** %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca %struct.pkthdr*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  store i32** %1, i32*** %4, align 8
  %7 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %8 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %7, i32 0, i32 1
  store %struct.pkthdr* %8, %struct.pkthdr** %5, align 8
  %9 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %10 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @M_PKTHDR, align 4
  %13 = and i32 %11, %12
  %14 = call i32 @VERIFY(i32 %13)
  %15 = load %struct.pkthdr*, %struct.pkthdr** %5, align 8
  %16 = getelementptr inbounds %struct.pkthdr, %struct.pkthdr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PKTF_PRIV_GUARDED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %23 = load %struct.pkthdr*, %struct.pkthdr** %5, align 8
  %24 = getelementptr inbounds %struct.pkthdr, %struct.pkthdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @panic_plain(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), %struct.mbuf* %22, i32 %25)
  br label %27

27:                                               ; preds = %21, %2
  %28 = load i64, i64* @mcltrace, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %27
  %31 = load i32, i32* @mbuf_mlock, align 4
  %32 = call i32 @lck_mtx_lock(i32 %31)
  %33 = load i32, i32* @MC_MBUF, align 4
  %34 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %35 = bitcast %struct.mbuf* %34 to i32*
  %36 = call %struct.TYPE_4__* @mcl_audit_buf2mca(i32 %33, i32* %35)
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %6, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MB_SCVALID, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %30
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %45 = call i32 @mcl_audit_scratch(%struct.TYPE_4__* %44)
  br label %46

46:                                               ; preds = %43, %30
  %47 = load i32, i32* @mbuf_mlock, align 4
  %48 = call i32 @lck_mtx_unlock(i32 %47)
  br label %49

49:                                               ; preds = %46, %27
  %50 = load %struct.pkthdr*, %struct.pkthdr** %5, align 8
  %51 = getelementptr inbounds %struct.pkthdr, %struct.pkthdr* %50, i32 0, i32 1
  %52 = load i32**, i32*** %4, align 8
  store i32* %51, i32** %52, align 8
  ret i32 4
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @panic_plain(i8*, %struct.mbuf*, i32) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local %struct.TYPE_4__* @mcl_audit_buf2mca(i32, i32*) #1

declare dso_local i32 @mcl_audit_scratch(%struct.TYPE_4__*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
