; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_udp6_usrreq.c_udp6_send.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_udp6_usrreq.c_udp6_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.pr_usrreqs* }
%struct.pr_usrreqs = type { i32 (%struct.socket*, i32, %struct.mbuf.0*, %struct.sockaddr*, %struct.mbuf.0*, %struct.proc*)* }
%struct.socket = type { i64 }
%struct.sockaddr = type { i32, i64 }
%struct.mbuf.0 = type opaque
%struct.proc = type { i32 }
%struct.mbuf = type { i32 }
%struct.inpcb = type { i32, i32, i32 }
%struct.sockaddr_in6 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@ip6_mapped_addr_on = common dso_local global i64 0, align 8
@IN6P_IPV6_V6ONLY = common dso_local global i32 0, align 4
@INP_IPV4 = common dso_local global i32 0, align 4
@ip_protox = common dso_local global %struct.TYPE_2__** null, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, %struct.mbuf*, %struct.sockaddr*, %struct.mbuf*, %struct.proc*)* @udp6_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp6_send(%struct.socket* %0, i32 %1, %struct.mbuf* %2, %struct.sockaddr* %3, %struct.mbuf* %4, %struct.proc* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.socket*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca %struct.proc*, align 8
  %14 = alloca %struct.inpcb*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.sockaddr_in6*, align 8
  %18 = alloca %struct.pr_usrreqs*, align 8
  store %struct.socket* %0, %struct.socket** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mbuf* %2, %struct.mbuf** %10, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %11, align 8
  store %struct.mbuf* %4, %struct.mbuf** %12, align 8
  store %struct.proc* %5, %struct.proc** %13, align 8
  store i32 0, i32* %15, align 4
  %19 = load %struct.socket*, %struct.socket** %8, align 8
  %20 = call %struct.inpcb* @sotoinpcb(%struct.socket* %19)
  store %struct.inpcb* %20, %struct.inpcb** %14, align 8
  %21 = load %struct.inpcb*, %struct.inpcb** %14, align 8
  %22 = icmp eq %struct.inpcb* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %15, align 4
  br label %112

25:                                               ; preds = %6
  %26 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %27 = icmp ne %struct.sockaddr* %26, null
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %30 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 4
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %15, align 4
  br label %112

36:                                               ; preds = %28
  %37 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %38 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AF_INET6, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %43, i32* %15, align 4
  br label %112

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %25
  %46 = load i64, i64* @ip6_mapped_addr_on, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %45
  %49 = load %struct.inpcb*, %struct.inpcb** %14, align 8
  %50 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IN6P_IPV6_V6ONLY, align 4
  %53 = and i32 %51, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %104

55:                                               ; preds = %48, %45
  store %struct.sockaddr_in6* null, %struct.sockaddr_in6** %17, align 8
  %56 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %57 = icmp eq %struct.sockaddr* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.inpcb*, %struct.inpcb** %14, align 8
  %60 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @INP_IPV4, align 4
  %63 = and i32 %61, %62
  store i32 %63, i32* %16, align 4
  br label %74

64:                                               ; preds = %55
  %65 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %66 = bitcast %struct.sockaddr* %65 to i8*
  %67 = bitcast i8* %66 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %67, %struct.sockaddr_in6** %17, align 8
  %68 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %17, align 8
  %69 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %68, i32 0, i32 0
  %70 = call i64 @IN6_IS_ADDR_V4MAPPED(i32* %69)
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 1, i32 0
  store i32 %73, i32* %16, align 4
  br label %74

74:                                               ; preds = %64, %58
  %75 = load i32, i32* %16, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %103

77:                                               ; preds = %74
  %78 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %17, align 8
  %79 = icmp ne %struct.sockaddr_in6* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %82 = call i32 @in6_sin6_2_sin_in_sock(%struct.sockaddr* %81)
  br label %83

83:                                               ; preds = %80, %77
  %84 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @ip_protox, align 8
  %85 = load i64, i64* @IPPROTO_UDP, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %84, i64 %85
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %88, align 8
  store %struct.pr_usrreqs* %89, %struct.pr_usrreqs** %18, align 8
  %90 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %18, align 8
  %91 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %90, i32 0, i32 0
  %92 = load i32 (%struct.socket*, i32, %struct.mbuf.0*, %struct.sockaddr*, %struct.mbuf.0*, %struct.proc*)*, i32 (%struct.socket*, i32, %struct.mbuf.0*, %struct.sockaddr*, %struct.mbuf.0*, %struct.proc*)** %91, align 8
  %93 = load %struct.socket*, %struct.socket** %8, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %96 = bitcast %struct.mbuf* %95 to %struct.mbuf.0*
  %97 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %98 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %99 = bitcast %struct.mbuf* %98 to %struct.mbuf.0*
  %100 = load %struct.proc*, %struct.proc** %13, align 8
  %101 = call i32 %92(%struct.socket* %93, i32 %94, %struct.mbuf.0* %96, %struct.sockaddr* %97, %struct.mbuf.0* %99, %struct.proc* %100)
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %15, align 4
  store i32 %102, i32* %7, align 4
  br label %130

103:                                              ; preds = %74
  br label %104

104:                                              ; preds = %103, %48
  %105 = load %struct.inpcb*, %struct.inpcb** %14, align 8
  %106 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %107 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %108 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %109 = load %struct.proc*, %struct.proc** %13, align 8
  %110 = call i32 @udp6_output(%struct.inpcb* %105, %struct.mbuf* %106, %struct.sockaddr* %107, %struct.mbuf* %108, %struct.proc* %109)
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %15, align 4
  store i32 %111, i32* %7, align 4
  br label %130

112:                                              ; preds = %42, %34, %23
  %113 = load i32, i32* %15, align 4
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i32
  %116 = call i32 @VERIFY(i32 %115)
  %117 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %118 = icmp ne %struct.mbuf* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %112
  %120 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %121 = call i32 @m_freem(%struct.mbuf* %120)
  br label %122

122:                                              ; preds = %119, %112
  %123 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %124 = icmp ne %struct.mbuf* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %127 = call i32 @m_freem(%struct.mbuf* %126)
  br label %128

128:                                              ; preds = %125, %122
  %129 = load i32, i32* %15, align 4
  store i32 %129, i32* %7, align 4
  br label %130

130:                                              ; preds = %128, %104, %83
  %131 = load i32, i32* %7, align 4
  ret i32 %131
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i64 @IN6_IS_ADDR_V4MAPPED(i32*) #1

declare dso_local i32 @in6_sin6_2_sin_in_sock(%struct.sockaddr*) #1

declare dso_local i32 @udp6_output(%struct.inpcb*, %struct.mbuf*, %struct.sockaddr*, %struct.mbuf*, %struct.proc*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
