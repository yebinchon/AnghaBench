; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_mcast.c_in6p_lookup_v4addr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_mcast.c_in6p_lookup_v4addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.ipv6_mreq = type { i32 }
%struct.ip_mreq = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ifaddr = type { i64 }
%struct.sockaddr_in = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@if_index = common dso_local global i64 0, align 8
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@ifindex2ifnet = common dso_local global %struct.ifnet** null, align 8
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipv6_mreq*, %struct.ip_mreq*)* @in6p_lookup_v4addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in6p_lookup_v4addr(%struct.ipv6_mreq* %0, %struct.ip_mreq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipv6_mreq*, align 8
  %5 = alloca %struct.ip_mreq*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.ifaddr*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  store %struct.ipv6_mreq* %0, %struct.ipv6_mreq** %4, align 8
  store %struct.ip_mreq* %1, %struct.ip_mreq** %5, align 8
  %9 = call i32 (...) @ifnet_head_lock_shared()
  %10 = load %struct.ipv6_mreq*, %struct.ipv6_mreq** %4, align 8
  %11 = getelementptr inbounds %struct.ipv6_mreq, %struct.ipv6_mreq* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i64, i64* @if_index, align 8
  %14 = trunc i64 %13 to i32
  %15 = icmp ugt i32 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = call i32 (...) @ifnet_head_done()
  %18 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %18, i32* %3, align 4
  br label %55

19:                                               ; preds = %2
  %20 = load %struct.ifnet**, %struct.ifnet*** @ifindex2ifnet, align 8
  %21 = load %struct.ipv6_mreq*, %struct.ipv6_mreq** %4, align 8
  %22 = getelementptr inbounds %struct.ipv6_mreq, %struct.ipv6_mreq* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ifnet*, %struct.ifnet** %20, i64 %24
  %26 = load %struct.ifnet*, %struct.ifnet** %25, align 8
  store %struct.ifnet* %26, %struct.ifnet** %6, align 8
  br label %27

27:                                               ; preds = %19
  %28 = call i32 (...) @ifnet_head_done()
  %29 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %30 = icmp eq %struct.ifnet* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %32, i32* %3, align 4
  br label %55

33:                                               ; preds = %27
  %34 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %35 = load i32, i32* @AF_INET, align 4
  %36 = call %struct.ifaddr* @ifa_ifpgetprimary(%struct.ifnet* %34, i32 %35)
  store %struct.ifaddr* %36, %struct.ifaddr** %7, align 8
  %37 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %38 = icmp eq %struct.ifaddr* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %40, i32* %3, align 4
  br label %55

41:                                               ; preds = %33
  %42 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %43 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %45, %struct.sockaddr_in** %8, align 8
  %46 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ip_mreq*, %struct.ip_mreq** %5, align 8
  %51 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  %53 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %54 = call i32 @IFA_REMREF(%struct.ifaddr* %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %41, %39, %31, %16
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @ifnet_head_lock_shared(...) #1

declare dso_local i32 @ifnet_head_done(...) #1

declare dso_local %struct.ifaddr* @ifa_ifpgetprimary(%struct.ifnet*, i32) #1

declare dso_local i32 @IFA_REMREF(%struct.ifaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
