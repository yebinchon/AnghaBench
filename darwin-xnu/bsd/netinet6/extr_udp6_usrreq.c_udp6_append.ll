; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_udp6_usrreq.c_udp6_append.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_udp6_usrreq.c_udp6_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.inpcb = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ip6_hdr = type { i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.mbuf = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ifnet = type { i32 }
%struct.sockaddr = type { i32 }

@INP_CONTROLOPTS = common dso_local global i32 0, align 4
@SO_TIMESTAMP = common dso_local global i32 0, align 4
@SO_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@SO_TIMESTAMP_CONTINUOUS = common dso_local global i32 0, align 4
@nstat_collect = common dso_local global i64 0, align 8
@rxpackets = common dso_local global i32 0, align 4
@rxbytes = common dso_local global i32 0, align 4
@udpstat = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inpcb*, %struct.ip6_hdr*, %struct.sockaddr_in6*, %struct.mbuf*, i32, %struct.ifnet*)* @udp6_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udp6_append(%struct.inpcb* %0, %struct.ip6_hdr* %1, %struct.sockaddr_in6* %2, %struct.mbuf* %3, i32 %4, %struct.ifnet* %5) #0 {
  %7 = alloca %struct.inpcb*, align 8
  %8 = alloca %struct.ip6_hdr*, align 8
  %9 = alloca %struct.sockaddr_in6*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ifnet*, align 8
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.inpcb* %0, %struct.inpcb** %7, align 8
  store %struct.ip6_hdr* %1, %struct.ip6_hdr** %8, align 8
  store %struct.sockaddr_in6* %2, %struct.sockaddr_in6** %9, align 8
  store %struct.mbuf* %3, %struct.mbuf** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.ifnet* %5, %struct.ifnet** %12, align 8
  store %struct.mbuf* null, %struct.mbuf** %13, align 8
  store i32 0, i32* %14, align 4
  %18 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %19 = call i32 @IFNET_IS_CELLULAR(%struct.ifnet* %18)
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %6
  %23 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %24 = call i64 @IFNET_IS_WIFI(%struct.ifnet* %23)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %22, %6
  %27 = phi i1 [ false, %6 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %33 = call i64 @IFNET_IS_WIRED(%struct.ifnet* %32)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %31, %26
  %36 = phi i1 [ false, %26 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %17, align 4
  %38 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %39 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @INP_CONTROLOPTS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %71, label %44

44:                                               ; preds = %35
  %45 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %46 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %45, i32 0, i32 1
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @SO_TIMESTAMP, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %71, label %53

53:                                               ; preds = %44
  %54 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %55 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SO_TIMESTAMP_MONOTONIC, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %53
  %63 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %64 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %63, i32 0, i32 1
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @SO_TIMESTAMP_CONTINUOUS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %62, %53, %44, %35
  %72 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %73 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %74 = call i32 @ip6_savecontrol(%struct.inpcb* %72, %struct.mbuf* %73, %struct.mbuf** %13)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %79 = call i32 @m_freem(%struct.mbuf* %78)
  %80 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %81 = call i32 @m_freem(%struct.mbuf* %80)
  br label %132

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %82, %62
  %84 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @m_adj(%struct.mbuf* %84, i32 %85)
  %87 = load i64, i64* @nstat_collect, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %83
  %90 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* @rxpackets, align 4
  %95 = call i32 @INP_ADD_STAT(%struct.inpcb* %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 1)
  %96 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* @rxbytes, align 4
  %101 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %102 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @INP_ADD_STAT(%struct.inpcb* %96, i32 %97, i32 %98, i32 %99, i32 %100, i32 %104)
  %106 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %107 = call i32 @inp_set_activity_bitmap(%struct.inpcb* %106)
  br label %108

108:                                              ; preds = %89, %83
  %109 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %110 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %109, i32 0, i32 1
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %113 = call i32 @so_recv_data_stat(%struct.TYPE_7__* %111, %struct.mbuf* %112, i32 0)
  %114 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %115 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %114, i32 0, i32 1
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %119 = bitcast %struct.sockaddr_in6* %118 to %struct.sockaddr*
  %120 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %121 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %122 = call i64 @sbappendaddr(i32* %117, %struct.sockaddr* %119, %struct.mbuf* %120, %struct.mbuf* %121, i32* null)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %108
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @udpstat, i32 0, i32 0), align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @udpstat, i32 0, i32 0), align 4
  br label %132

127:                                              ; preds = %108
  %128 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %129 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %128, i32 0, i32 1
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = call i32 @sorwakeup(%struct.TYPE_7__* %130)
  br label %132

132:                                              ; preds = %77, %127, %124
  ret void
}

declare dso_local i32 @IFNET_IS_CELLULAR(%struct.ifnet*) #1

declare dso_local i64 @IFNET_IS_WIFI(%struct.ifnet*) #1

declare dso_local i64 @IFNET_IS_WIRED(%struct.ifnet*) #1

declare dso_local i32 @ip6_savecontrol(%struct.inpcb*, %struct.mbuf*, %struct.mbuf**) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i32) #1

declare dso_local i32 @INP_ADD_STAT(%struct.inpcb*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @inp_set_activity_bitmap(%struct.inpcb*) #1

declare dso_local i32 @so_recv_data_stat(%struct.TYPE_7__*, %struct.mbuf*, i32) #1

declare dso_local i64 @sbappendaddr(i32*, %struct.sockaddr*, %struct.mbuf*, %struct.mbuf*, i32*) #1

declare dso_local i32 @sorwakeup(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
