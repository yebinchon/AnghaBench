; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_insert_dsn.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_insert_dsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mppcb = type { i32 }
%struct.mbuf = type { i32, %struct.mbuf*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.mptcb = type { i32, i32 }
%struct.mpp_mtp = type { %struct.mptcb }

@M_PKTHDR = common dso_local global i32 0, align 4
@PKTF_MPTCP = common dso_local global i32 0, align 4
@PKTF_MPSO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mptcp_insert_dsn(%struct.mppcb* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.mppcb*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.mptcb*, align 8
  store %struct.mppcb* %0, %struct.mppcb** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %6 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %7 = icmp eq %struct.mbuf* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %58

9:                                                ; preds = %2
  %10 = load %struct.mppcb*, %struct.mppcb** %3, align 8
  %11 = bitcast %struct.mppcb* %10 to %struct.mpp_mtp*
  %12 = getelementptr inbounds %struct.mpp_mtp, %struct.mpp_mtp* %11, i32 0, i32 0
  store %struct.mptcb* %12, %struct.mptcb** %5, align 8
  %13 = call i32 @__IGNORE_WCASTALIGN(%struct.mptcb* %12)
  %14 = load %struct.mptcb*, %struct.mptcb** %5, align 8
  %15 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mpte_lock_assert_held(i32 %16)
  br label %18

18:                                               ; preds = %21, %9
  %19 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %20 = icmp ne %struct.mbuf* %19, null
  br i1 %20, label %21, label %58

21:                                               ; preds = %18
  %22 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %23 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @M_PKTHDR, align 4
  %26 = and i32 %24, %25
  %27 = call i32 @VERIFY(i32 %26)
  %28 = load i32, i32* @PKTF_MPTCP, align 4
  %29 = load i32, i32* @PKTF_MPSO, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %32 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %30
  store i32 %35, i32* %33, align 8
  %36 = load %struct.mptcb*, %struct.mptcb** %5, align 8
  %37 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %40 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 8
  %42 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %43 = call i64 @m_pktlen(%struct.mbuf* %42)
  %44 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %45 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i64 %43, i64* %46, align 8
  %47 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %48 = call i64 @m_pktlen(%struct.mbuf* %47)
  %49 = load %struct.mptcb*, %struct.mptcb** %5, align 8
  %50 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %48
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 4
  %55 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %56 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %55, i32 0, i32 1
  %57 = load %struct.mbuf*, %struct.mbuf** %56, align 8
  store %struct.mbuf* %57, %struct.mbuf** %4, align 8
  br label %18

58:                                               ; preds = %8, %18
  ret void
}

declare dso_local i32 @__IGNORE_WCASTALIGN(%struct.mptcb*) #1

declare dso_local i32 @mpte_lock_assert_held(i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @m_pktlen(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
