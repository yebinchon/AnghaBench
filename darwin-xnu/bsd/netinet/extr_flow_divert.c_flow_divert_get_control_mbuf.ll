; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_get_control_mbuf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_get_control_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_divert_pcb = type { i64, i32 }
%struct.inpcb = type { i32, i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.in6_pktinfo = type { i64, i32 }

@INP_IPV4 = common dso_local global i32 0, align 4
@INP_RECVDSTADDR = common dso_local global i32 0, align 4
@IP_RECVDSTADDR = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@INP_IPV6 = common dso_local global i32 0, align 4
@IN6P_PKTINFO = common dso_local global i32 0, align 4
@IPV6_PKTINFO = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.flow_divert_pcb*)* @flow_divert_get_control_mbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @flow_divert_get_control_mbuf(%struct.flow_divert_pcb* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.flow_divert_pcb*, align 8
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca %struct.sockaddr_in6*, align 8
  %7 = alloca %struct.in6_pktinfo, align 8
  store %struct.flow_divert_pcb* %0, %struct.flow_divert_pcb** %3, align 8
  %8 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %9 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.inpcb* @sotoinpcb(i32 %10)
  store %struct.inpcb* %11, %struct.inpcb** %4, align 8
  %12 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %13 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @INP_IPV4, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %1
  %19 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %20 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @INP_RECVDSTADDR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %18
  %26 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %27 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = bitcast i8* %29 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %30, %struct.sockaddr_in** %5, align 8
  %31 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %31, i32 0, i32 0
  %33 = ptrtoint i32* %32 to i32
  %34 = load i32, i32* @IP_RECVDSTADDR, align 4
  %35 = load i32, i32* @IPPROTO_IP, align 4
  %36 = call i32* @sbcreatecontrol(i32 %33, i32 4, i32 %34, i32 %35)
  store i32* %36, i32** %2, align 8
  br label %68

37:                                               ; preds = %18, %1
  %38 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %39 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @INP_IPV6, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %37
  %45 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %46 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IN6P_PKTINFO, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %44
  %52 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %53 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = bitcast i8* %55 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %56, %struct.sockaddr_in6** %6, align 8
  %57 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %58 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.in6_pktinfo, %struct.in6_pktinfo* %7, i32 0, i32 1
  %60 = call i32 @bcopy(i32* %58, i32* %59, i32 4)
  %61 = getelementptr inbounds %struct.in6_pktinfo, %struct.in6_pktinfo* %7, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = ptrtoint %struct.in6_pktinfo* %7 to i32
  %63 = load i32, i32* @IPV6_PKTINFO, align 4
  %64 = load i32, i32* @IPPROTO_IPV6, align 4
  %65 = call i32* @sbcreatecontrol(i32 %62, i32 16, i32 %63, i32 %64)
  store i32* %65, i32** %2, align 8
  br label %68

66:                                               ; preds = %44, %37
  br label %67

67:                                               ; preds = %66
  store i32* null, i32** %2, align 8
  br label %68

68:                                               ; preds = %67, %51, %25
  %69 = load i32*, i32** %2, align 8
  ret i32* %69
}

declare dso_local %struct.inpcb* @sotoinpcb(i32) #1

declare dso_local i32* @sbcreatecontrol(i32, i32, i32, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
