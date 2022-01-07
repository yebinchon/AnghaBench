; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcpstats_update.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcpstats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mptcp_itf_stats = type { i32, i32 }
%struct.mptsub = type { i32 }
%struct.inpcb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mptcpstats_update(%struct.mptcp_itf_stats* %0, %struct.mptsub* %1) #0 {
  %3 = alloca %struct.mptcp_itf_stats*, align 8
  %4 = alloca %struct.mptsub*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inpcb*, align 8
  store %struct.mptcp_itf_stats* %0, %struct.mptcp_itf_stats** %3, align 8
  store %struct.mptsub* %1, %struct.mptsub** %4, align 8
  %7 = load %struct.mptcp_itf_stats*, %struct.mptcp_itf_stats** %3, align 8
  %8 = load %struct.mptsub*, %struct.mptsub** %4, align 8
  %9 = call i32 @mptcp_get_statsindex(%struct.mptcp_itf_stats* %7, %struct.mptsub* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %45

12:                                               ; preds = %2
  %13 = load %struct.mptsub*, %struct.mptsub** %4, align 8
  %14 = getelementptr inbounds %struct.mptsub, %struct.mptsub* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.inpcb* @sotoinpcb(i32 %15)
  store %struct.inpcb* %16, %struct.inpcb** %6, align 8
  %17 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %18 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.mptcp_itf_stats*, %struct.mptcp_itf_stats** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.mptcp_itf_stats, %struct.mptcp_itf_stats* %22, i64 %24
  %26 = getelementptr inbounds %struct.mptcp_itf_stats, %struct.mptcp_itf_stats* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %21
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %26, align 4
  %31 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %32 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.mptcp_itf_stats*, %struct.mptcp_itf_stats** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.mptcp_itf_stats, %struct.mptcp_itf_stats* %36, i64 %38
  %40 = getelementptr inbounds %struct.mptcp_itf_stats, %struct.mptcp_itf_stats* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %35
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %40, align 4
  br label %45

45:                                               ; preds = %12, %2
  ret void
}

declare dso_local i32 @mptcp_get_statsindex(%struct.mptcp_itf_stats*, %struct.mptsub*) #1

declare dso_local %struct.inpcb* @sotoinpcb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
