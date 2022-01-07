; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_sbappendstream_rcvdemux.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_sbappendstream_rcvdemux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32 }
%struct.mbuf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SOF_MP_SUBFLOW = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@PKTF_MPTCP_DFIN = common dso_local global i32 0, align 4
@SOF_ENABLE_MSGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sbappendstream_rcvdemux(%struct.socket* %0, %struct.mbuf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.mbuf* %1, %struct.mbuf** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %12 = icmp ne %struct.mbuf* %11, null
  br i1 %12, label %13, label %43

13:                                               ; preds = %4
  %14 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %15 = call i64 @m_pktlen(%struct.mbuf* %14)
  %16 = icmp sle i64 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %13
  %18 = load %struct.socket*, %struct.socket** %6, align 8
  %19 = getelementptr inbounds %struct.socket, %struct.socket* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SOF_MP_SUBFLOW, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %17
  %25 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %26 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @M_PKTHDR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %33 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PKTF_MPTCP_DFIN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %31, %24, %17
  %40 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %41 = call i32 @m_freem(%struct.mbuf* %40)
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %5, align 4
  br label %64

43:                                               ; preds = %31, %13, %4
  %44 = load %struct.socket*, %struct.socket** %6, align 8
  %45 = getelementptr inbounds %struct.socket, %struct.socket* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SOF_ENABLE_MSGS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load %struct.socket*, %struct.socket** %6, align 8
  %52 = getelementptr inbounds %struct.socket, %struct.socket* %51, i32 0, i32 1
  %53 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @sbappendmsgstream_rcv(i32* %52, %struct.mbuf* %53, i32 %54, i32 %55)
  store i32 %56, i32* %10, align 4
  br label %62

57:                                               ; preds = %43
  %58 = load %struct.socket*, %struct.socket** %6, align 8
  %59 = getelementptr inbounds %struct.socket, %struct.socket* %58, i32 0, i32 1
  %60 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %61 = call i32 @sbappendstream(i32* %59, %struct.mbuf* %60)
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %57, %50
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %62, %39
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i64 @m_pktlen(%struct.mbuf*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @sbappendmsgstream_rcv(i32*, %struct.mbuf*, i32, i32) #1

declare dso_local i32 @sbappendstream(i32*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
