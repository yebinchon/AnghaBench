; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_prproxy.c_nd6_prproxy_isours.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_prproxy.c_nd6_prproxy_isours.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ip6_hdr = type { i64, i64, i32 }
%struct.route_in6 = type { %struct.rtentry*, %struct.TYPE_3__ }
%struct.rtentry = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.route = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@IPV6_MAXHLIM = common dso_local global i64 0, align 8
@IPPROTO_ICMPV6 = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@RTF_PRCLONING = common dso_local global i32 0, align 4
@RTF_PROXY = common dso_local global i32 0, align 4
@PKTF_PROXY_DST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nd6_prproxy_isours(%struct.mbuf* %0, %struct.ip6_hdr* %1, %struct.route_in6* %2, i32 %3) #0 {
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.ip6_hdr*, align 8
  %7 = alloca %struct.route_in6*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtentry*, align 8
  %10 = alloca i64, align 8
  store %struct.mbuf* %0, %struct.mbuf** %5, align 8
  store %struct.ip6_hdr* %1, %struct.ip6_hdr** %6, align 8
  store %struct.route_in6* %2, %struct.route_in6** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i64, i64* @FALSE, align 8
  store i64 %11, i64* %10, align 8
  %12 = load %struct.ip6_hdr*, %struct.ip6_hdr** %6, align 8
  %13 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @IPV6_MAXHLIM, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %4
  %18 = load %struct.ip6_hdr*, %struct.ip6_hdr** %6, align 8
  %19 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IPPROTO_ICMPV6, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %4
  br label %107

24:                                               ; preds = %17
  %25 = load %struct.ip6_hdr*, %struct.ip6_hdr** %6, align 8
  %26 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %25, i32 0, i32 2
  %27 = call i64 @IN6_IS_ADDR_MC_NODELOCAL(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.ip6_hdr*, %struct.ip6_hdr** %6, align 8
  %31 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %30, i32 0, i32 2
  %32 = call i64 @IN6_IS_ADDR_MC_LINKLOCAL(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29, %24
  %35 = load %struct.route_in6*, %struct.route_in6** %7, align 8
  %36 = icmp eq %struct.route_in6* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @VERIFY(i32 %37)
  %39 = load i64, i64* @TRUE, align 8
  store i64 %39, i64* %10, align 8
  br label %107

40:                                               ; preds = %29
  %41 = load %struct.ip6_hdr*, %struct.ip6_hdr** %6, align 8
  %42 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %41, i32 0, i32 2
  %43 = call i64 @IN6_IS_ADDR_MULTICAST(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %107

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.route_in6*, %struct.route_in6** %7, align 8
  %49 = icmp eq %struct.route_in6* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %107

51:                                               ; preds = %47
  %52 = load %struct.route_in6*, %struct.route_in6** %7, align 8
  %53 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %52, i32 0, i32 0
  %54 = load %struct.rtentry*, %struct.rtentry** %53, align 8
  store %struct.rtentry* %54, %struct.rtentry** %9, align 8
  %55 = icmp ne %struct.rtentry* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %58 = call i32 @RT_LOCK(%struct.rtentry* %57)
  br label %59

59:                                               ; preds = %56, %51
  %60 = load %struct.route_in6*, %struct.route_in6** %7, align 8
  %61 = call i64 @ROUTE_UNUSABLE(%struct.route_in6* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %92

63:                                               ; preds = %59
  %64 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %65 = icmp ne %struct.rtentry* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %68 = call i32 @RT_UNLOCK(%struct.rtentry* %67)
  br label %69

69:                                               ; preds = %66, %63
  %70 = load %struct.route_in6*, %struct.route_in6** %7, align 8
  %71 = call i32 @ROUTE_RELEASE(%struct.route_in6* %70)
  %72 = load %struct.ip6_hdr*, %struct.ip6_hdr** %6, align 8
  %73 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %72, i32 0, i32 2
  %74 = load %struct.route_in6*, %struct.route_in6** %7, align 8
  %75 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = call i32 @IN6_ARE_ADDR_EQUAL(i32* %73, i32* %76)
  %78 = call i32 @VERIFY(i32 %77)
  %79 = load %struct.route_in6*, %struct.route_in6** %7, align 8
  %80 = bitcast %struct.route_in6* %79 to %struct.route*
  %81 = load i32, i32* @RTF_PRCLONING, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @rtalloc_scoped_ign(%struct.route* %80, i32 %81, i32 %82)
  %84 = load %struct.route_in6*, %struct.route_in6** %7, align 8
  %85 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %84, i32 0, i32 0
  %86 = load %struct.rtentry*, %struct.rtentry** %85, align 8
  store %struct.rtentry* %86, %struct.rtentry** %9, align 8
  %87 = icmp eq %struct.rtentry* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %69
  br label %107

89:                                               ; preds = %69
  %90 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %91 = call i32 @RT_LOCK(%struct.rtentry* %90)
  br label %92

92:                                               ; preds = %89, %59
  %93 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %94 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @RTF_PROXY, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = load i64, i64* @TRUE, align 8
  br label %103

101:                                              ; preds = %92
  %102 = load i64, i64* @FALSE, align 8
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i64 [ %100, %99 ], [ %102, %101 ]
  store i64 %104, i64* %10, align 8
  %105 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %106 = call i32 @RT_UNLOCK(%struct.rtentry* %105)
  br label %107

107:                                              ; preds = %103, %88, %50, %45, %34, %23
  %108 = load i64, i64* %10, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load i32, i32* @PKTF_PROXY_DST, align 4
  %112 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %113 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %111
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %110, %107
  %118 = load i64, i64* %10, align 8
  ret i64 %118
}

declare dso_local i64 @IN6_IS_ADDR_MC_NODELOCAL(i32*) #1

declare dso_local i64 @IN6_IS_ADDR_MC_LINKLOCAL(i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @IN6_IS_ADDR_MULTICAST(i32*) #1

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local i64 @ROUTE_UNUSABLE(%struct.route_in6*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local i32 @ROUTE_RELEASE(%struct.route_in6*) #1

declare dso_local i32 @IN6_ARE_ADDR_EQUAL(i32*, i32*) #1

declare dso_local i32 @rtalloc_scoped_ign(%struct.route*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
