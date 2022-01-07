; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_raw_ip6.c_rip6_bind.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_raw_ip6.c_rip6_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.proc = type { i32 }
%struct.inpcb = type { %struct.ifnet*, i32 }
%struct.ifnet = type { i32 }
%struct.sockaddr_in6 = type { i64, i32, i64, i64, i64 }
%struct.ifaddr = type { %struct.ifnet* }
%struct.in6_ifaddr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EPROTOTYPE = common dso_local global i32 0, align 4
@ifnet_head = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@ip6_use_defzone = common dso_local global i32 0, align 4
@IN6_IFF_ANYCAST = common dso_local global i32 0, align 4
@IN6_IFF_NOTREADY = common dso_local global i32 0, align 4
@IN6_IFF_CLAT46 = common dso_local global i32 0, align 4
@IN6_IFF_DETACHED = common dso_local global i32 0, align 4
@IN6_IFF_DEPRECATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, %struct.proc*)* @rip6_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rip6_bind(%struct.socket* %0, %struct.sockaddr* %1, %struct.proc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca %struct.inpcb*, align 8
  %9 = alloca %struct.sockaddr_in6, align 8
  %10 = alloca %struct.ifaddr*, align 8
  %11 = alloca %struct.ifnet*, align 8
  %12 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.proc* %2, %struct.proc** %7, align 8
  %13 = load %struct.socket*, %struct.socket** %5, align 8
  %14 = call %struct.inpcb* @sotoinpcb(%struct.socket* %13)
  store %struct.inpcb* %14, %struct.inpcb** %8, align 8
  store %struct.ifaddr* null, %struct.ifaddr** %10, align 8
  store %struct.ifnet* null, %struct.ifnet** %11, align 8
  %15 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %16 = icmp eq %struct.inpcb* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %19 = icmp eq %struct.inpcb* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @EINVAL, align 4
  br label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @EPROTOTYPE, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %4, align 4
  br label %113

26:                                               ; preds = %3
  %27 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %28 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ne i64 %30, 40
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %4, align 4
  br label %113

34:                                               ; preds = %26
  %35 = call i64 @TAILQ_EMPTY(i32* @ifnet_head)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %39 = call %struct.sockaddr_in6* @SIN6(%struct.sockaddr* %38)
  %40 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @AF_INET6, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %37, %34
  %45 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %45, i32* %4, align 4
  br label %113

46:                                               ; preds = %37
  %47 = call i32 @bzero(%struct.sockaddr_in6* %9, i32 40)
  %48 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %49 = call %struct.sockaddr_in6* @SIN6(%struct.sockaddr* %48)
  %50 = bitcast %struct.sockaddr_in6* %9 to i8*
  %51 = bitcast %struct.sockaddr_in6* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 %51, i64 40, i1 false)
  %52 = load i32, i32* @ip6_use_defzone, align 4
  %53 = call i32 @sa6_embedscope(%struct.sockaddr_in6* %9, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %4, align 4
  br label %113

57:                                               ; preds = %46
  %58 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 4
  store i64 0, i64* %58, align 8
  %59 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 3
  store i64 0, i64* %59, align 8
  %60 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 2
  store i64 0, i64* %60, align 8
  %61 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 1
  %62 = call i32 @IN6_IS_ADDR_UNSPECIFIED(i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %57
  %65 = call i32 @SA(%struct.sockaddr_in6* %9)
  %66 = call %struct.ifaddr* @ifa_ifwithaddr(i32 %65)
  store %struct.ifaddr* %66, %struct.ifaddr** %10, align 8
  %67 = icmp eq %struct.ifaddr* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %69, i32* %4, align 4
  br label %113

70:                                               ; preds = %64, %57
  %71 = load %struct.ifaddr*, %struct.ifaddr** %10, align 8
  %72 = icmp ne %struct.ifaddr* %71, null
  br i1 %72, label %73, label %105

73:                                               ; preds = %70
  %74 = load %struct.ifaddr*, %struct.ifaddr** %10, align 8
  %75 = call i32 @IFA_LOCK(%struct.ifaddr* %74)
  %76 = load %struct.ifaddr*, %struct.ifaddr** %10, align 8
  %77 = bitcast %struct.ifaddr* %76 to %struct.in6_ifaddr*
  %78 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @IN6_IFF_ANYCAST, align 4
  %81 = load i32, i32* @IN6_IFF_NOTREADY, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @IN6_IFF_CLAT46, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @IN6_IFF_DETACHED, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @IN6_IFF_DEPRECATED, align 4
  %88 = or i32 %86, %87
  %89 = and i32 %79, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %73
  %92 = load %struct.ifaddr*, %struct.ifaddr** %10, align 8
  %93 = call i32 @IFA_UNLOCK(%struct.ifaddr* %92)
  %94 = load %struct.ifaddr*, %struct.ifaddr** %10, align 8
  %95 = call i32 @IFA_REMREF(%struct.ifaddr* %94)
  %96 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %96, i32* %4, align 4
  br label %113

97:                                               ; preds = %73
  %98 = load %struct.ifaddr*, %struct.ifaddr** %10, align 8
  %99 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %98, i32 0, i32 0
  %100 = load %struct.ifnet*, %struct.ifnet** %99, align 8
  store %struct.ifnet* %100, %struct.ifnet** %11, align 8
  %101 = load %struct.ifaddr*, %struct.ifaddr** %10, align 8
  %102 = call i32 @IFA_UNLOCK(%struct.ifaddr* %101)
  %103 = load %struct.ifaddr*, %struct.ifaddr** %10, align 8
  %104 = call i32 @IFA_REMREF(%struct.ifaddr* %103)
  br label %105

105:                                              ; preds = %97, %70
  %106 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %109 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 8
  %110 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  %111 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %112 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %111, i32 0, i32 0
  store %struct.ifnet* %110, %struct.ifnet** %112, align 8
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %105, %91, %68, %55, %44, %32, %24
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.sockaddr_in6* @SIN6(%struct.sockaddr*) #1

declare dso_local i32 @bzero(%struct.sockaddr_in6*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sa6_embedscope(%struct.sockaddr_in6*, i32) #1

declare dso_local i32 @IN6_IS_ADDR_UNSPECIFIED(i32*) #1

declare dso_local %struct.ifaddr* @ifa_ifwithaddr(i32) #1

declare dso_local i32 @SA(%struct.sockaddr_in6*) #1

declare dso_local i32 @IFA_LOCK(%struct.ifaddr*) #1

declare dso_local i32 @IFA_UNLOCK(%struct.ifaddr*) #1

declare dso_local i32 @IFA_REMREF(%struct.ifaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
