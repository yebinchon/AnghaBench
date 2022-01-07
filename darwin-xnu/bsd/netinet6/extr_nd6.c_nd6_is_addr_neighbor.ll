; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6.c_nd6_is_addr_neighbor.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6.c_nd6_is_addr_neighbor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i32 }
%struct.ifnet = type { i32 }
%struct.rtentry = type { i32 }

@nd6_mutex = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_NOTOWNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nd6_is_addr_neighbor(%struct.sockaddr_in6* %0, %struct.ifnet* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in6*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtentry*, align 8
  store %struct.sockaddr_in6* %0, %struct.sockaddr_in6** %5, align 8
  store %struct.ifnet* %1, %struct.ifnet** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @nd6_mutex, align 4
  %10 = load i32, i32* @LCK_MTX_ASSERT_NOTOWNED, align 4
  %11 = call i32 @LCK_MTX_ASSERT(i32 %9, i32 %10)
  %12 = load i32, i32* @nd6_mutex, align 4
  %13 = call i32 @lck_mtx_lock(i32 %12)
  %14 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %15 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %16 = call i64 @nd6_is_new_addr_neighbor(%struct.sockaddr_in6* %14, %struct.ifnet* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @nd6_mutex, align 4
  %20 = call i32 @lck_mtx_unlock(i32 %19)
  store i32 1, i32* %4, align 4
  br label %38

21:                                               ; preds = %3
  %22 = load i32, i32* @nd6_mutex, align 4
  %23 = call i32 @lck_mtx_unlock(i32 %22)
  %24 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %24, i32 0, i32 0
  %26 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.rtentry* @nd6_lookup(i32* %25, i32 0, %struct.ifnet* %26, i32 %27)
  store %struct.rtentry* %28, %struct.rtentry** %8, align 8
  %29 = icmp ne %struct.rtentry* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %32 = call i32 @RT_LOCK_ASSERT_HELD(%struct.rtentry* %31)
  %33 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %34 = call i32 @RT_REMREF_LOCKED(%struct.rtentry* %33)
  %35 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %36 = call i32 @RT_UNLOCK(%struct.rtentry* %35)
  store i32 1, i32* %4, align 4
  br label %38

37:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %30, %18
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i64 @nd6_is_new_addr_neighbor(%struct.sockaddr_in6*, %struct.ifnet*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local %struct.rtentry* @nd6_lookup(i32*, i32, %struct.ifnet*, i32) #1

declare dso_local i32 @RT_LOCK_ASSERT_HELD(%struct.rtentry*) #1

declare dso_local i32 @RT_REMREF_LOCKED(%struct.rtentry*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
