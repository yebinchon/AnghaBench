; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_localaddr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_localaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_ifaddr = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.in6_ifaddr* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.in6_addr = type { i32 }

@in6_ifaddr_rwlock = common dso_local global i32 0, align 4
@in6_ifaddrs = common dso_local global %struct.in6_ifaddr* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_localaddr(%struct.in6_addr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.in6_addr*, align 8
  %4 = alloca %struct.in6_ifaddr*, align 8
  store %struct.in6_addr* %0, %struct.in6_addr** %3, align 8
  %5 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %6 = call i64 @IN6_IS_ADDR_LOOPBACK(%struct.in6_addr* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %10 = call i64 @IN6_IS_ADDR_LINKLOCAL(%struct.in6_addr* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %1
  store i32 1, i32* %2, align 4
  br label %47

13:                                               ; preds = %8
  %14 = call i32 @lck_rw_lock_shared(i32* @in6_ifaddr_rwlock)
  %15 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** @in6_ifaddrs, align 8
  store %struct.in6_ifaddr* %15, %struct.in6_ifaddr** %4, align 8
  br label %16

16:                                               ; preds = %41, %13
  %17 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %18 = icmp ne %struct.in6_ifaddr* %17, null
  br i1 %18, label %19, label %45

19:                                               ; preds = %16
  %20 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %21 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %20, i32 0, i32 0
  %22 = call i32 @IFA_LOCK_SPIN(i32* %21)
  %23 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %24 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %25 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %28 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = call i64 @IN6_ARE_MASKED_ADDR_EQUAL(%struct.in6_addr* %23, i32* %26, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %19
  %33 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %34 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %33, i32 0, i32 0
  %35 = call i32 @IFA_UNLOCK(i32* %34)
  %36 = call i32 @lck_rw_done(i32* @in6_ifaddr_rwlock)
  store i32 1, i32* %2, align 4
  br label %47

37:                                               ; preds = %19
  %38 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %39 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %38, i32 0, i32 0
  %40 = call i32 @IFA_UNLOCK(i32* %39)
  br label %41

41:                                               ; preds = %37
  %42 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %43 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %42, i32 0, i32 3
  %44 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %43, align 8
  store %struct.in6_ifaddr* %44, %struct.in6_ifaddr** %4, align 8
  br label %16

45:                                               ; preds = %16
  %46 = call i32 @lck_rw_done(i32* @in6_ifaddr_rwlock)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %32, %12
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @IN6_IS_ADDR_LOOPBACK(%struct.in6_addr*) #1

declare dso_local i64 @IN6_IS_ADDR_LINKLOCAL(%struct.in6_addr*) #1

declare dso_local i32 @lck_rw_lock_shared(i32*) #1

declare dso_local i32 @IFA_LOCK_SPIN(i32*) #1

declare dso_local i64 @IN6_ARE_MASKED_ADDR_EQUAL(%struct.in6_addr*, i32*, i32*) #1

declare dso_local i32 @IFA_UNLOCK(i32*) #1

declare dso_local i32 @lck_rw_done(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
