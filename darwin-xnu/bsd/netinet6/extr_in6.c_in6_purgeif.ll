; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_purgeif.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_purgeif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_ifaddr = type { %struct.TYPE_4__, %struct.in6_ifaddr* }
%struct.TYPE_4__ = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@nd6_mutex = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_NOTOWNED = common dso_local global i32 0, align 4
@in6_ifaddr_rwlock = common dso_local global i32 0, align 4
@in6_ifaddrs = common dso_local global %struct.in6_ifaddr* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in6_purgeif(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.in6_ifaddr*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %4 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %5 = icmp eq %struct.ifnet* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %44

7:                                                ; preds = %1
  %8 = load i32, i32* @nd6_mutex, align 4
  %9 = load i32, i32* @LCK_MTX_ASSERT_NOTOWNED, align 4
  %10 = call i32 @LCK_MTX_ASSERT(i32 %8, i32 %9)
  %11 = call i32 @lck_rw_lock_exclusive(i32* @in6_ifaddr_rwlock)
  %12 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** @in6_ifaddrs, align 8
  store %struct.in6_ifaddr* %12, %struct.in6_ifaddr** %3, align 8
  br label %13

13:                                               ; preds = %27, %23, %7
  %14 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %15 = icmp ne %struct.in6_ifaddr* %14, null
  br i1 %15, label %16, label %40

16:                                               ; preds = %13
  %17 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %18 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.ifnet*, %struct.ifnet** %19, align 8
  %21 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %22 = icmp ne %struct.ifnet* %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %25 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %24, i32 0, i32 1
  %26 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %25, align 8
  store %struct.in6_ifaddr* %26, %struct.in6_ifaddr** %3, align 8
  br label %13

27:                                               ; preds = %16
  %28 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %29 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %28, i32 0, i32 0
  %30 = call i32 @IFA_ADDREF(%struct.TYPE_4__* %29)
  %31 = call i32 @lck_rw_done(i32* @in6_ifaddr_rwlock)
  %32 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %33 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %32, i32 0, i32 0
  %34 = call i32 @in6_purgeaddr(%struct.TYPE_4__* %33)
  %35 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %36 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %35, i32 0, i32 0
  %37 = call i32 @IFA_REMREF(%struct.TYPE_4__* %36)
  %38 = call i32 @lck_rw_lock_exclusive(i32* @in6_ifaddr_rwlock)
  %39 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** @in6_ifaddrs, align 8
  store %struct.in6_ifaddr* %39, %struct.in6_ifaddr** %3, align 8
  br label %13

40:                                               ; preds = %13
  %41 = call i32 @lck_rw_done(i32* @in6_ifaddr_rwlock)
  %42 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %43 = call i32 @in6_ifdetach(%struct.ifnet* %42)
  br label %44

44:                                               ; preds = %40, %6
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @lck_rw_lock_exclusive(i32*) #1

declare dso_local i32 @IFA_ADDREF(%struct.TYPE_4__*) #1

declare dso_local i32 @lck_rw_done(i32*) #1

declare dso_local i32 @in6_purgeaddr(%struct.TYPE_4__*) #1

declare dso_local i32 @IFA_REMREF(%struct.TYPE_4__*) #1

declare dso_local i32 @in6_ifdetach(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
