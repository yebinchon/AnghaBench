; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_src.c_in6_selectroute.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_src.c_in6_selectroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i32 }
%struct.ip6_pktopts = type { i32 }
%struct.ip6_moptions = type { i32 }
%struct.in6_ifaddr = type { i32 }
%struct.route_in6 = type { i32 }
%struct.ifnet = type { i32 }
%struct.rtentry = type { i32 }
%struct.ip6_out_args = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_selectroute(%struct.sockaddr_in6* %0, %struct.sockaddr_in6* %1, %struct.ip6_pktopts* %2, %struct.ip6_moptions* %3, %struct.in6_ifaddr** %4, %struct.route_in6* %5, %struct.ifnet** %6, %struct.rtentry** %7, i32 %8, %struct.ip6_out_args* %9) #0 {
  %11 = alloca %struct.sockaddr_in6*, align 8
  %12 = alloca %struct.sockaddr_in6*, align 8
  %13 = alloca %struct.ip6_pktopts*, align 8
  %14 = alloca %struct.ip6_moptions*, align 8
  %15 = alloca %struct.in6_ifaddr**, align 8
  %16 = alloca %struct.route_in6*, align 8
  %17 = alloca %struct.ifnet**, align 8
  %18 = alloca %struct.rtentry**, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.ip6_out_args*, align 8
  store %struct.sockaddr_in6* %0, %struct.sockaddr_in6** %11, align 8
  store %struct.sockaddr_in6* %1, %struct.sockaddr_in6** %12, align 8
  store %struct.ip6_pktopts* %2, %struct.ip6_pktopts** %13, align 8
  store %struct.ip6_moptions* %3, %struct.ip6_moptions** %14, align 8
  store %struct.in6_ifaddr** %4, %struct.in6_ifaddr*** %15, align 8
  store %struct.route_in6* %5, %struct.route_in6** %16, align 8
  store %struct.ifnet** %6, %struct.ifnet*** %17, align 8
  store %struct.rtentry** %7, %struct.rtentry*** %18, align 8
  store i32 %8, i32* %19, align 4
  store %struct.ip6_out_args* %9, %struct.ip6_out_args** %20, align 8
  %21 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %22 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %12, align 8
  %23 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %13, align 8
  %24 = load %struct.ip6_moptions*, %struct.ip6_moptions** %14, align 8
  %25 = load %struct.in6_ifaddr**, %struct.in6_ifaddr*** %15, align 8
  %26 = load %struct.route_in6*, %struct.route_in6** %16, align 8
  %27 = load %struct.ifnet**, %struct.ifnet*** %17, align 8
  %28 = load %struct.rtentry**, %struct.rtentry*** %18, align 8
  %29 = load i32, i32* %19, align 4
  %30 = load %struct.ip6_out_args*, %struct.ip6_out_args** %20, align 8
  %31 = call i32 @selectroute(%struct.sockaddr_in6* %21, %struct.sockaddr_in6* %22, %struct.ip6_pktopts* %23, %struct.ip6_moptions* %24, %struct.in6_ifaddr** %25, %struct.route_in6* %26, %struct.ifnet** %27, %struct.rtentry** %28, i32 %29, i32 0, %struct.ip6_out_args* %30)
  ret i32 %31
}

declare dso_local i32 @selectroute(%struct.sockaddr_in6*, %struct.sockaddr_in6*, %struct.ip6_pktopts*, %struct.ip6_moptions*, %struct.in6_ifaddr**, %struct.route_in6*, %struct.ifnet**, %struct.rtentry**, i32, i32, %struct.ip6_out_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
