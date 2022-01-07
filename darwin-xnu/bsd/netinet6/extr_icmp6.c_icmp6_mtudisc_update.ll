; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_icmp6.c_icmp6_mtudisc_update.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_icmp6.c_icmp6_mtudisc_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.ip6ctlparam = type { %struct.mbuf*, %struct.icmp6_hdr*, %struct.in6_addr* }
%struct.mbuf = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.icmp6_hdr = type { i32 }
%struct.in6_addr = type { i32* }
%struct.rtentry = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.sockaddr_in6 = type { i32, %struct.in6_addr, i32 }
%struct.sockaddr = type { i32 }

@IPV6_MMTU = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@RTF_CLONING = common dso_local global i32 0, align 4
@RTF_PRCLONING = common dso_local global i32 0, align 4
@RTF_HOST = common dso_local global i32 0, align 4
@RTV_MTU = common dso_local global i32 0, align 4
@icmp6stat = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @icmp6_mtudisc_update(%struct.ip6ctlparam* %0, i32 %1) #0 {
  %3 = alloca %struct.ip6ctlparam*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.icmp6_hdr*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtentry*, align 8
  %10 = alloca %struct.sockaddr_in6, align 8
  store %struct.ip6ctlparam* %0, %struct.ip6ctlparam** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.ip6ctlparam*, %struct.ip6ctlparam** %3, align 8
  %12 = getelementptr inbounds %struct.ip6ctlparam, %struct.ip6ctlparam* %11, i32 0, i32 2
  %13 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  store %struct.in6_addr* %13, %struct.in6_addr** %5, align 8
  %14 = load %struct.ip6ctlparam*, %struct.ip6ctlparam** %3, align 8
  %15 = getelementptr inbounds %struct.ip6ctlparam, %struct.ip6ctlparam* %14, i32 0, i32 1
  %16 = load %struct.icmp6_hdr*, %struct.icmp6_hdr** %15, align 8
  store %struct.icmp6_hdr* %16, %struct.icmp6_hdr** %6, align 8
  %17 = load %struct.ip6ctlparam*, %struct.ip6ctlparam** %3, align 8
  %18 = getelementptr inbounds %struct.ip6ctlparam, %struct.ip6ctlparam* %17, i32 0, i32 0
  %19 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  store %struct.mbuf* %19, %struct.mbuf** %7, align 8
  %20 = load %struct.icmp6_hdr*, %struct.icmp6_hdr** %6, align 8
  %21 = getelementptr inbounds %struct.icmp6_hdr, %struct.icmp6_hdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ntohl(i32 %22)
  store i32 %23, i32* %8, align 4
  store %struct.rtentry* null, %struct.rtentry** %9, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ult i64 %25, 16
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %120

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  br label %120

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @IPV6_MMTU, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @IPV6_MMTU, align 4
  %38 = sub nsw i32 %37, 8
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %36, %32
  %40 = call i32 @bzero(%struct.sockaddr_in6* %10, i32 24)
  %41 = load i32, i32* @PF_INET6, align 4
  %42 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %10, i32 0, i32 2
  store i32 %41, i32* %42, align 8
  %43 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %10, i32 0, i32 0
  store i32 24, i32* %43, align 8
  %44 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %10, i32 0, i32 1
  %45 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %46 = bitcast %struct.in6_addr* %44 to i8*
  %47 = bitcast %struct.in6_addr* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 8, i1 false)
  %48 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %49 = call i64 @IN6_IS_ADDR_LINKLOCAL(%struct.in6_addr* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %39
  %52 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %53 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @htons(i32 %57)
  %59 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %10, i32 0, i32 1
  %60 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %51, %39
  %64 = bitcast %struct.sockaddr_in6* %10 to %struct.sockaddr*
  %65 = load i32, i32* @RTF_CLONING, align 4
  %66 = load i32, i32* @RTF_PRCLONING, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %69 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call %struct.rtentry* @rtalloc1_scoped(%struct.sockaddr* %64, i32 0, i32 %67, i32 %73)
  store %struct.rtentry* %74, %struct.rtentry** %9, align 8
  %75 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %76 = icmp ne %struct.rtentry* %75, null
  br i1 %76, label %77, label %120

77:                                               ; preds = %63
  %78 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %79 = call i32 @RT_LOCK(%struct.rtentry* %78)
  %80 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %81 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @RTF_HOST, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %115

86:                                               ; preds = %77
  %87 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %88 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @RTV_MTU, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %115, label %94

94:                                               ; preds = %86
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %97 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @IN6_LINKMTU(i32 %98)
  %100 = icmp slt i32 %95, %99
  br i1 %100, label %101, label %115

101:                                              ; preds = %94
  %102 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %103 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp sgt i32 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %101
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @icmp6stat, i32 0, i32 0), align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @icmp6stat, i32 0, i32 0), align 4
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %113 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  store i32 %111, i32* %114, align 4
  br label %115

115:                                              ; preds = %108, %101, %94, %86, %77
  %116 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %117 = call i32 @RT_UNLOCK(%struct.rtentry* %116)
  %118 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %119 = call i32 @rtfree(%struct.rtentry* %118)
  br label %120

120:                                              ; preds = %27, %31, %115, %63
  ret void
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @bzero(%struct.sockaddr_in6*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @IN6_IS_ADDR_LINKLOCAL(%struct.in6_addr*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.rtentry* @rtalloc1_scoped(%struct.sockaddr*, i32, i32, i32) #1

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local i32 @IN6_LINKMTU(i32) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local i32 @rtfree(%struct.rtentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
