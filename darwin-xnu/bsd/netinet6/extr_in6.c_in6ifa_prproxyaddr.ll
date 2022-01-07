; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6ifa_prproxyaddr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6ifa_prproxyaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_ifaddr = type { i32, %struct.in6_ifaddr* }
%struct.in6_addr = type { i32 }

@in6_ifaddr_rwlock = common dso_local global i32 0, align 4
@in6_ifaddrs = common dso_local global %struct.in6_ifaddr* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.in6_ifaddr* @in6ifa_prproxyaddr(%struct.in6_addr* %0) #0 {
  %2 = alloca %struct.in6_addr*, align 8
  %3 = alloca %struct.in6_ifaddr*, align 8
  store %struct.in6_addr* %0, %struct.in6_addr** %2, align 8
  %4 = call i32 @lck_rw_lock_shared(i32* @in6_ifaddr_rwlock)
  %5 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** @in6_ifaddrs, align 8
  store %struct.in6_ifaddr* %5, %struct.in6_ifaddr** %3, align 8
  br label %6

6:                                                ; preds = %30, %1
  %7 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %8 = icmp ne %struct.in6_ifaddr* %7, null
  br i1 %8, label %9, label %34

9:                                                ; preds = %6
  %10 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %11 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %10, i32 0, i32 0
  %12 = call i32 @IFA_LOCK(i32* %11)
  %13 = load %struct.in6_addr*, %struct.in6_addr** %2, align 8
  %14 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %15 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %14, i32 0, i32 0
  %16 = call i32 @IFA_IN6(i32* %15)
  %17 = call i64 @IN6_ARE_ADDR_EQUAL(%struct.in6_addr* %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %9
  %20 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %21 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %20, i32 0, i32 0
  %22 = call i32 @IFA_ADDREF_LOCKED(i32* %21)
  %23 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %24 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %23, i32 0, i32 0
  %25 = call i32 @IFA_UNLOCK(i32* %24)
  br label %34

26:                                               ; preds = %9
  %27 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %28 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %27, i32 0, i32 0
  %29 = call i32 @IFA_UNLOCK(i32* %28)
  br label %30

30:                                               ; preds = %26
  %31 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %32 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %31, i32 0, i32 1
  %33 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %32, align 8
  store %struct.in6_ifaddr* %33, %struct.in6_ifaddr** %3, align 8
  br label %6

34:                                               ; preds = %19, %6
  %35 = call i32 @lck_rw_done(i32* @in6_ifaddr_rwlock)
  %36 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %37 = icmp ne %struct.in6_ifaddr* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %40 = call i32 @nd6_prproxy_ifaddr(%struct.in6_ifaddr* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %44 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %43, i32 0, i32 0
  %45 = call i32 @IFA_REMREF(i32* %44)
  store %struct.in6_ifaddr* null, %struct.in6_ifaddr** %3, align 8
  br label %46

46:                                               ; preds = %42, %38, %34
  %47 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  ret %struct.in6_ifaddr* %47
}

declare dso_local i32 @lck_rw_lock_shared(i32*) #1

declare dso_local i32 @IFA_LOCK(i32*) #1

declare dso_local i64 @IN6_ARE_ADDR_EQUAL(%struct.in6_addr*, i32) #1

declare dso_local i32 @IFA_IN6(i32*) #1

declare dso_local i32 @IFA_ADDREF_LOCKED(i32*) #1

declare dso_local i32 @IFA_UNLOCK(i32*) #1

declare dso_local i32 @lck_rw_done(i32*) #1

declare dso_local i32 @nd6_prproxy_ifaddr(%struct.in6_ifaddr*) #1

declare dso_local i32 @IFA_REMREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
