; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_prproxy.c_nd6_prproxy_ifaddr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_prproxy.c_nd6_prproxy_ifaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.nd_prefix* }
%struct.nd_prefix = type { i32, %struct.TYPE_7__, %struct.nd_prefix* }
%struct.TYPE_7__ = type { i32 }
%struct.in6_ifaddr = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.in6_addr = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@nd6_mutex = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_NOTOWNED = common dso_local global i32 0, align 4
@nd_prefix = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@NDPRF_ONLINK = common dso_local global i32 0, align 4
@NDPRF_PRPROXY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nd6_prproxy_ifaddr(%struct.in6_ifaddr* %0) #0 {
  %2 = alloca %struct.in6_ifaddr*, align 8
  %3 = alloca %struct.nd_prefix*, align 8
  %4 = alloca %struct.in6_addr, align 4
  %5 = alloca %struct.in6_addr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.in6_ifaddr* %0, %struct.in6_ifaddr** %2, align 8
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* @nd6_mutex, align 4
  %10 = load i32, i32* @LCK_MTX_ASSERT_NOTOWNED, align 4
  %11 = call i32 @LCK_MTX_ASSERT(i32 %9, i32 %10)
  %12 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %2, align 8
  %13 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %12, i32 0, i32 0
  %14 = call i32 @IFA_LOCK(i32* %13)
  %15 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %2, align 8
  %16 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = call i32 @bcopy(i32* %17, %struct.in6_addr* %4, i32 4)
  %19 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %2, align 8
  %20 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = call i32 @bcopy(i32* %21, %struct.in6_addr* %5, i32 4)
  %23 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %2, align 8
  %24 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %2, align 8
  %27 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %26, i32 0, i32 0
  %28 = call i32 @IFA_UNLOCK(i32* %27)
  %29 = load i32, i32* @nd6_mutex, align 4
  %30 = call i32 @lck_mtx_lock(i32 %29)
  %31 = load %struct.nd_prefix*, %struct.nd_prefix** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @nd_prefix, i32 0, i32 0), align 8
  store %struct.nd_prefix* %31, %struct.nd_prefix** %3, align 8
  br label %32

32:                                               ; preds = %65, %1
  %33 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %34 = icmp ne %struct.nd_prefix* %33, null
  br i1 %34, label %35, label %69

35:                                               ; preds = %32
  %36 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %37 = call i32 @NDPR_LOCK(%struct.nd_prefix* %36)
  %38 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %39 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @NDPRF_ONLINK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %35
  %45 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %46 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @NDPRF_PRPROXY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %44
  %52 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %53 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %6, align 4
  %56 = call i64 @in6_are_prefix_equal(i32* %54, %struct.in6_addr* %4, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %60 = call i32 @NDPR_UNLOCK(%struct.nd_prefix* %59)
  %61 = load i32, i32* @TRUE, align 4
  store i32 %61, i32* %7, align 4
  br label %69

62:                                               ; preds = %51, %44, %35
  %63 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %64 = call i32 @NDPR_UNLOCK(%struct.nd_prefix* %63)
  br label %65

65:                                               ; preds = %62
  %66 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %67 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %66, i32 0, i32 2
  %68 = load %struct.nd_prefix*, %struct.nd_prefix** %67, align 8
  store %struct.nd_prefix* %68, %struct.nd_prefix** %3, align 8
  br label %32

69:                                               ; preds = %58, %32
  %70 = load i32, i32* @nd6_mutex, align 4
  %71 = call i32 @lck_mtx_unlock(i32 %70)
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @IFA_LOCK(i32*) #1

declare dso_local i32 @bcopy(i32*, %struct.in6_addr*, i32) #1

declare dso_local i32 @IFA_UNLOCK(i32*) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @NDPR_LOCK(%struct.nd_prefix*) #1

declare dso_local i64 @in6_are_prefix_equal(i32*, %struct.in6_addr*, i32) #1

declare dso_local i32 @NDPR_UNLOCK(%struct.nd_prefix*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
