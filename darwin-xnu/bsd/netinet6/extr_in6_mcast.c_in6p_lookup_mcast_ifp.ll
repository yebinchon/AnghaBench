; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_mcast.c_in6p_lookup_mcast_ifp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_mcast.c_in6p_lookup_mcast_ifp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.inpcb = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr_in6 = type { i64, i32 }
%struct.route_in6 = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.ifnet* }
%struct.route = type { i32 }

@IFSCOPE_NONE = common dso_local global i32 0, align 4
@INP_IPV6 = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@INP_BOUND_IF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ifnet* (%struct.inpcb*, %struct.sockaddr_in6*)* @in6p_lookup_mcast_ifp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ifnet* @in6p_lookup_mcast_ifp(%struct.inpcb* %0, %struct.sockaddr_in6* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca %struct.sockaddr_in6*, align 8
  %6 = alloca %struct.route_in6, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca i32, align 4
  store %struct.inpcb* %0, %struct.inpcb** %4, align 8
  store %struct.sockaddr_in6* %1, %struct.sockaddr_in6** %5, align 8
  %9 = load i32, i32* @IFSCOPE_NONE, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %11 = icmp eq %struct.inpcb* %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %14 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @INP_IPV6, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %12, %2
  %20 = phi i1 [ true, %2 ], [ %18, %12 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @VERIFY(i32 %21)
  %23 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %24 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AF_INET6, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @VERIFY(i32 %28)
  %30 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %31 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %30, i32 0, i32 1
  %32 = call i64 @IN6_IS_ADDR_MULTICAST(i32* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %19
  store %struct.ifnet* null, %struct.ifnet** %3, align 8
  br label %74

35:                                               ; preds = %19
  %36 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %37 = icmp ne %struct.inpcb* %36, null
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %40 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @INP_BOUND_IF, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %47 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %46, i32 0, i32 2
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %45, %38, %35
  store %struct.ifnet* null, %struct.ifnet** %7, align 8
  %52 = call i32 @memset(%struct.route_in6* %6, i32 0, i32 16)
  %53 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %6, i32 0, i32 1
  %54 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %55 = call i32 @memcpy(i32* %53, %struct.sockaddr_in6* %54, i32 16)
  %56 = bitcast %struct.route_in6* %6 to %struct.route*
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @rtalloc_scoped_ign(%struct.route* %56, i32 0, i32 %57)
  %59 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %6, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = icmp ne %struct.TYPE_4__* %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %51
  %63 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %6, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.ifnet*, %struct.ifnet** %65, align 8
  store %struct.ifnet* %66, %struct.ifnet** %7, align 8
  %67 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %68 = icmp ne %struct.ifnet* %67, null
  %69 = zext i1 %68 to i32
  %70 = call i32 @VERIFY(i32 %69)
  br label %71

71:                                               ; preds = %62, %51
  %72 = call i32 @ROUTE_RELEASE(%struct.route_in6* %6)
  %73 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  store %struct.ifnet* %73, %struct.ifnet** %3, align 8
  br label %74

74:                                               ; preds = %71, %34
  %75 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  ret %struct.ifnet* %75
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @IN6_IS_ADDR_MULTICAST(i32*) #1

declare dso_local i32 @memset(%struct.route_in6*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr_in6*, i32) #1

declare dso_local i32 @rtalloc_scoped_ign(%struct.route*, i32, i32) #1

declare dso_local i32 @ROUTE_RELEASE(%struct.route_in6*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
