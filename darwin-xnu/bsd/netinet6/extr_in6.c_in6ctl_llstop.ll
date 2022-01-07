; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6ctl_llstop.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6ctl_llstop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_ifaddr = type { %struct.in6_ifaddr*, %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.nd_prefix = type { i32, %struct.TYPE_10__, %struct.ifnet* }
%struct.TYPE_10__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }

@in6_ifaddr_rwlock = common dso_local global i32 0, align 4
@in6_ifaddrs = common dso_local global %struct.in6_ifaddr* null, align 8
@IPV6_ADDR_INT16_ULL = common dso_local global i32 0, align 4
@ND6_PREFIX_EXPIRY_UNSPEC = common dso_local global i32 0, align 4
@nd6_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @in6ctl_llstop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in6ctl_llstop(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.in6_ifaddr*, align 8
  %4 = alloca %struct.nd_prefix, align 8
  %5 = alloca %struct.nd_prefix*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %7 = icmp ne %struct.ifnet* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @VERIFY(i32 %8)
  %10 = call i32 @lck_rw_lock_exclusive(i32* @in6_ifaddr_rwlock)
  %11 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** @in6_ifaddrs, align 8
  store %struct.in6_ifaddr* %11, %struct.in6_ifaddr** %3, align 8
  br label %12

12:                                               ; preds = %51, %35, %22, %1
  %13 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %14 = icmp ne %struct.in6_ifaddr* %13, null
  br i1 %14, label %15, label %58

15:                                               ; preds = %12
  %16 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %17 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load %struct.ifnet*, %struct.ifnet** %18, align 8
  %20 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %21 = icmp ne %struct.ifnet* %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %24 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %23, i32 0, i32 0
  %25 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %24, align 8
  store %struct.in6_ifaddr* %25, %struct.in6_ifaddr** %3, align 8
  br label %12

26:                                               ; preds = %15
  %27 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %28 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %27, i32 0, i32 1
  %29 = call i32 @IFA_LOCK(%struct.TYPE_12__* %28)
  %30 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %31 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = call i64 @IN6_IS_ADDR_LINKLOCAL(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %26
  %36 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %37 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %36, i32 0, i32 1
  %38 = call i32 @IFA_ADDREF_LOCKED(%struct.TYPE_12__* %37)
  %39 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %40 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %39, i32 0, i32 1
  %41 = call i32 @IFA_UNLOCK(%struct.TYPE_12__* %40)
  %42 = call i32 @lck_rw_done(i32* @in6_ifaddr_rwlock)
  %43 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %44 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %43, i32 0, i32 1
  %45 = call i32 @in6_purgeaddr(%struct.TYPE_12__* %44)
  %46 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %47 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %46, i32 0, i32 1
  %48 = call i32 @IFA_REMREF(%struct.TYPE_12__* %47)
  %49 = call i32 @lck_rw_lock_exclusive(i32* @in6_ifaddr_rwlock)
  %50 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** @in6_ifaddrs, align 8
  store %struct.in6_ifaddr* %50, %struct.in6_ifaddr** %3, align 8
  br label %12

51:                                               ; preds = %26
  %52 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %53 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %52, i32 0, i32 1
  %54 = call i32 @IFA_UNLOCK(%struct.TYPE_12__* %53)
  %55 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %56 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %55, i32 0, i32 0
  %57 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %56, align 8
  store %struct.in6_ifaddr* %57, %struct.in6_ifaddr** %3, align 8
  br label %12

58:                                               ; preds = %12
  %59 = call i32 @lck_rw_done(i32* @in6_ifaddr_rwlock)
  %60 = call i32 @bzero(%struct.nd_prefix* %4, i32 24)
  %61 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %4, i32 0, i32 0
  store i32 64, i32* %61, align 8
  %62 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %63 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %4, i32 0, i32 2
  store %struct.ifnet* %62, %struct.ifnet** %63, align 8
  %64 = load i32, i32* @IPV6_ADDR_INT16_ULL, align 4
  %65 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %4, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 %64, i32* %69, align 4
  %70 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %4, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %73 = call i32 @in6_setscope(%struct.TYPE_11__* %71, %struct.ifnet* %72, i32* null)
  %74 = load i32, i32* @ND6_PREFIX_EXPIRY_UNSPEC, align 4
  %75 = call %struct.nd_prefix* @nd6_prefix_lookup(%struct.nd_prefix* %4, i32 %74)
  store %struct.nd_prefix* %75, %struct.nd_prefix** %5, align 8
  %76 = load %struct.nd_prefix*, %struct.nd_prefix** %5, align 8
  %77 = icmp ne %struct.nd_prefix* %76, null
  br i1 %77, label %78, label %91

78:                                               ; preds = %58
  %79 = load i32, i32* @nd6_mutex, align 4
  %80 = call i32 @lck_mtx_lock(i32 %79)
  %81 = load %struct.nd_prefix*, %struct.nd_prefix** %5, align 8
  %82 = call i32 @NDPR_LOCK(%struct.nd_prefix* %81)
  %83 = load %struct.nd_prefix*, %struct.nd_prefix** %5, align 8
  %84 = call i32 @prelist_remove(%struct.nd_prefix* %83)
  %85 = load %struct.nd_prefix*, %struct.nd_prefix** %5, align 8
  %86 = call i32 @NDPR_UNLOCK(%struct.nd_prefix* %85)
  %87 = load %struct.nd_prefix*, %struct.nd_prefix** %5, align 8
  %88 = call i32 @NDPR_REMREF(%struct.nd_prefix* %87)
  %89 = load i32, i32* @nd6_mutex, align 4
  %90 = call i32 @lck_mtx_unlock(i32 %89)
  br label %91

91:                                               ; preds = %78, %58
  ret i32 0
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @lck_rw_lock_exclusive(i32*) #1

declare dso_local i32 @IFA_LOCK(%struct.TYPE_12__*) #1

declare dso_local i64 @IN6_IS_ADDR_LINKLOCAL(i32*) #1

declare dso_local i32 @IFA_ADDREF_LOCKED(%struct.TYPE_12__*) #1

declare dso_local i32 @IFA_UNLOCK(%struct.TYPE_12__*) #1

declare dso_local i32 @lck_rw_done(i32*) #1

declare dso_local i32 @in6_purgeaddr(%struct.TYPE_12__*) #1

declare dso_local i32 @IFA_REMREF(%struct.TYPE_12__*) #1

declare dso_local i32 @bzero(%struct.nd_prefix*, i32) #1

declare dso_local i32 @in6_setscope(%struct.TYPE_11__*, %struct.ifnet*, i32*) #1

declare dso_local %struct.nd_prefix* @nd6_prefix_lookup(%struct.nd_prefix*, i32) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @NDPR_LOCK(%struct.nd_prefix*) #1

declare dso_local i32 @prelist_remove(%struct.nd_prefix*) #1

declare dso_local i32 @NDPR_UNLOCK(%struct.nd_prefix*) #1

declare dso_local i32 @NDPR_REMREF(%struct.nd_prefix*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
