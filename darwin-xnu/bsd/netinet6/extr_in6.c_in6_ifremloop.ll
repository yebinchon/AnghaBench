; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_ifremloop.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_ifremloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_ifaddr = type { i32, %struct.TYPE_3__, %struct.in6_ifaddr* }
%struct.TYPE_3__ = type { i32 }
%struct.ifaddr = type { i32 }
%struct.rtentry = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@in6_ifaddr_rwlock = common dso_local global i32 0, align 4
@in6_ifaddrs = common dso_local global %struct.in6_ifaddr* null, align 8
@RTF_HOST = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@RTM_DELETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifaddr*)* @in6_ifremloop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @in6_ifremloop(%struct.ifaddr* %0) #0 {
  %2 = alloca %struct.ifaddr*, align 8
  %3 = alloca %struct.in6_ifaddr*, align 8
  %4 = alloca %struct.rtentry*, align 8
  %5 = alloca i32, align 4
  store %struct.ifaddr* %0, %struct.ifaddr** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32 @lck_rw_lock_exclusive(i32* @in6_ifaddr_rwlock)
  %7 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** @in6_ifaddrs, align 8
  store %struct.in6_ifaddr* %7, %struct.in6_ifaddr** %3, align 8
  br label %8

8:                                                ; preds = %36, %1
  %9 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %10 = icmp ne %struct.in6_ifaddr* %9, null
  br i1 %10, label %11, label %40

11:                                               ; preds = %8
  %12 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %13 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %12, i32 0, i32 0
  %14 = call i32 @IFA_LOCK(i32* %13)
  %15 = load %struct.ifaddr*, %struct.ifaddr** %2, align 8
  %16 = call i32 @IFA_IN6(%struct.ifaddr* %15)
  %17 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %18 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i64 @IN6_ARE_ADDR_EQUAL(i32 %16, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %11
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %29 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %28, i32 0, i32 0
  %30 = call i32 @IFA_UNLOCK(i32* %29)
  br label %40

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %11
  %33 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %34 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %33, i32 0, i32 0
  %35 = call i32 @IFA_UNLOCK(i32* %34)
  br label %36

36:                                               ; preds = %32
  %37 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %38 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %37, i32 0, i32 2
  %39 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %38, align 8
  store %struct.in6_ifaddr* %39, %struct.in6_ifaddr** %3, align 8
  br label %8

40:                                               ; preds = %27, %8
  %41 = call i32 @lck_rw_done(i32* @in6_ifaddr_rwlock)
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %82

44:                                               ; preds = %40
  %45 = load %struct.ifaddr*, %struct.ifaddr** %2, align 8
  %46 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.rtentry* @rtalloc1(i32 %47, i32 0, i32 0)
  store %struct.rtentry* %48, %struct.rtentry** %4, align 8
  %49 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %50 = icmp ne %struct.rtentry* %49, null
  br i1 %50, label %51, label %81

51:                                               ; preds = %44
  %52 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %53 = call i32 @RT_LOCK(%struct.rtentry* %52)
  %54 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %55 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @RTF_HOST, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %77

60:                                               ; preds = %51
  %61 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %62 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @IFF_LOOPBACK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %60
  %70 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %71 = call i32 @RT_REMREF_LOCKED(%struct.rtentry* %70)
  %72 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %73 = call i32 @RT_UNLOCK(%struct.rtentry* %72)
  %74 = load i32, i32* @RTM_DELETE, align 4
  %75 = load %struct.ifaddr*, %struct.ifaddr** %2, align 8
  %76 = call i32 @in6_ifloop_request(i32 %74, %struct.ifaddr* %75)
  br label %80

77:                                               ; preds = %60, %51
  %78 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %79 = call i32 @RT_UNLOCK(%struct.rtentry* %78)
  br label %80

80:                                               ; preds = %77, %69
  br label %81

81:                                               ; preds = %80, %44
  br label %82

82:                                               ; preds = %81, %40
  ret void
}

declare dso_local i32 @lck_rw_lock_exclusive(i32*) #1

declare dso_local i32 @IFA_LOCK(i32*) #1

declare dso_local i64 @IN6_ARE_ADDR_EQUAL(i32, i32*) #1

declare dso_local i32 @IFA_IN6(%struct.ifaddr*) #1

declare dso_local i32 @IFA_UNLOCK(i32*) #1

declare dso_local i32 @lck_rw_done(i32*) #1

declare dso_local %struct.rtentry* @rtalloc1(i32, i32, i32) #1

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local i32 @RT_REMREF_LOCKED(%struct.rtentry*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local i32 @in6_ifloop_request(i32, %struct.ifaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
