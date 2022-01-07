; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_autoconf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_autoconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_ifaddr = type { i32, %struct.in6_ifaddr*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.ifnet* }
%struct.ifnet = type { i32, i32 }

@IFF_LOOPBACK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IFEF_IPV6_ROUTER = common dso_local global i32 0, align 4
@IFEF_ACCEPT_RTADV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@in6_ifaddr_rwlock = common dso_local global i32 0, align 4
@in6_ifaddrs = common dso_local global %struct.in6_ifaddr* null, align 8
@IN6_IFF_AUTOCONF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32)* @in6_autoconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in6_autoconf(%struct.ifnet* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.in6_ifaddr*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %9 = icmp ne %struct.ifnet* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @VERIFY(i32 %10)
  %12 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IFF_LOOPBACK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %113

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %20
  %24 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %25 = call i32 @ifnet_lock_exclusive(%struct.ifnet* %24)
  %26 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %27 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IFEF_IPV6_ROUTER, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %23
  %33 = load i32, i32* @IFEF_ACCEPT_RTADV, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @EBUSY, align 4
  store i32 %39, i32* %6, align 4
  br label %46

40:                                               ; preds = %23
  %41 = load i32, i32* @IFEF_ACCEPT_RTADV, align 4
  %42 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %43 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %40, %32
  %47 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %48 = call i32 @ifnet_lock_done(%struct.ifnet* %47)
  br label %111

49:                                               ; preds = %20
  store %struct.in6_ifaddr* null, %struct.in6_ifaddr** %7, align 8
  %50 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %51 = call i32 @ifnet_lock_exclusive(%struct.ifnet* %50)
  %52 = load i32, i32* @IFEF_ACCEPT_RTADV, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %55 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %59 = call i32 @ifnet_lock_done(%struct.ifnet* %58)
  %60 = call i32 @lck_rw_lock_exclusive(i32* @in6_ifaddr_rwlock)
  %61 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** @in6_ifaddrs, align 8
  store %struct.in6_ifaddr* %61, %struct.in6_ifaddr** %7, align 8
  br label %62

62:                                               ; preds = %102, %86, %72, %49
  %63 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %7, align 8
  %64 = icmp ne %struct.in6_ifaddr* %63, null
  br i1 %64, label %65, label %109

65:                                               ; preds = %62
  %66 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %7, align 8
  %67 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load %struct.ifnet*, %struct.ifnet** %68, align 8
  %70 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %71 = icmp ne %struct.ifnet* %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %7, align 8
  %74 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %73, i32 0, i32 1
  %75 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %74, align 8
  store %struct.in6_ifaddr* %75, %struct.in6_ifaddr** %7, align 8
  br label %62

76:                                               ; preds = %65
  %77 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %7, align 8
  %78 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %77, i32 0, i32 2
  %79 = call i32 @IFA_LOCK(%struct.TYPE_6__* %78)
  %80 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %7, align 8
  %81 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @IN6_IFF_AUTOCONF, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %76
  %87 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %7, align 8
  %88 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %87, i32 0, i32 2
  %89 = call i32 @IFA_ADDREF_LOCKED(%struct.TYPE_6__* %88)
  %90 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %7, align 8
  %91 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %90, i32 0, i32 2
  %92 = call i32 @IFA_UNLOCK(%struct.TYPE_6__* %91)
  %93 = call i32 @lck_rw_done(i32* @in6_ifaddr_rwlock)
  %94 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %7, align 8
  %95 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %94, i32 0, i32 2
  %96 = call i32 @in6_purgeaddr(%struct.TYPE_6__* %95)
  %97 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %7, align 8
  %98 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %97, i32 0, i32 2
  %99 = call i32 @IFA_REMREF(%struct.TYPE_6__* %98)
  %100 = call i32 @lck_rw_lock_exclusive(i32* @in6_ifaddr_rwlock)
  %101 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** @in6_ifaddrs, align 8
  store %struct.in6_ifaddr* %101, %struct.in6_ifaddr** %7, align 8
  br label %62

102:                                              ; preds = %76
  %103 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %7, align 8
  %104 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %103, i32 0, i32 2
  %105 = call i32 @IFA_UNLOCK(%struct.TYPE_6__* %104)
  %106 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %7, align 8
  %107 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %106, i32 0, i32 1
  %108 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %107, align 8
  store %struct.in6_ifaddr* %108, %struct.in6_ifaddr** %7, align 8
  br label %62

109:                                              ; preds = %62
  %110 = call i32 @lck_rw_done(i32* @in6_ifaddr_rwlock)
  br label %111

111:                                              ; preds = %109, %46
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %111, %18
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @ifnet_lock_exclusive(%struct.ifnet*) #1

declare dso_local i32 @ifnet_lock_done(%struct.ifnet*) #1

declare dso_local i32 @lck_rw_lock_exclusive(i32*) #1

declare dso_local i32 @IFA_LOCK(%struct.TYPE_6__*) #1

declare dso_local i32 @IFA_ADDREF_LOCKED(%struct.TYPE_6__*) #1

declare dso_local i32 @IFA_UNLOCK(%struct.TYPE_6__*) #1

declare dso_local i32 @lck_rw_done(i32*) #1

declare dso_local i32 @in6_purgeaddr(%struct.TYPE_6__*) #1

declare dso_local i32 @IFA_REMREF(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
