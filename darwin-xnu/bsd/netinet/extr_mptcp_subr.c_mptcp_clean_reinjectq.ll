; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_clean_reinjectq.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_clean_reinjectq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mptses = type { %struct.mbuf*, %struct.mptcb* }
%struct.mbuf = type { %struct.mbuf*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.mptcb = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mptcp_clean_reinjectq(%struct.mptses* %0) #0 {
  %2 = alloca %struct.mptses*, align 8
  %3 = alloca %struct.mptcb*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.mptses* %0, %struct.mptses** %2, align 8
  %5 = load %struct.mptses*, %struct.mptses** %2, align 8
  %6 = getelementptr inbounds %struct.mptses, %struct.mptses* %5, i32 0, i32 1
  %7 = load %struct.mptcb*, %struct.mptcb** %6, align 8
  store %struct.mptcb* %7, %struct.mptcb** %3, align 8
  %8 = load %struct.mptses*, %struct.mptses** %2, align 8
  %9 = call i32 @mpte_lock_assert_held(%struct.mptses* %8)
  br label %10

10:                                               ; preds = %44, %1
  %11 = load %struct.mptses*, %struct.mptses** %2, align 8
  %12 = getelementptr inbounds %struct.mptses, %struct.mptses* %11, i32 0, i32 0
  %13 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %14 = icmp ne %struct.mbuf* %13, null
  br i1 %14, label %15, label %54

15:                                               ; preds = %10
  %16 = load %struct.mptses*, %struct.mptses** %2, align 8
  %17 = getelementptr inbounds %struct.mptses, %struct.mptses* %16, i32 0, i32 0
  %18 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  store %struct.mbuf* %18, %struct.mbuf** %4, align 8
  %19 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %20 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.mptcb*, %struct.mptcb** %3, align 8
  %24 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @MPTCP_SEQ_GEQ(i64 %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %15
  %29 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %30 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %34 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %32, %36
  %38 = load %struct.mptcb*, %struct.mptcb** %3, align 8
  %39 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @MPTCP_SEQ_GT(i64 %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %28, %15
  br label %54

44:                                               ; preds = %28
  %45 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %46 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %45, i32 0, i32 0
  %47 = load %struct.mbuf*, %struct.mbuf** %46, align 8
  %48 = load %struct.mptses*, %struct.mptses** %2, align 8
  %49 = getelementptr inbounds %struct.mptses, %struct.mptses* %48, i32 0, i32 0
  store %struct.mbuf* %47, %struct.mbuf** %49, align 8
  %50 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %51 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %50, i32 0, i32 0
  store %struct.mbuf* null, %struct.mbuf** %51, align 8
  %52 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %53 = call i32 @m_freem(%struct.mbuf* %52)
  br label %10

54:                                               ; preds = %43, %10
  ret void
}

declare dso_local i32 @mpte_lock_assert_held(%struct.mptses*) #1

declare dso_local i64 @MPTCP_SEQ_GEQ(i64, i32) #1

declare dso_local i64 @MPTCP_SEQ_GT(i64, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
