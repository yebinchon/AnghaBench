; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in.c_in_ifscrub.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in.c_in_ifscrub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.in_ifaddr = type { i32, i32 }

@IFA_ROUTE = common dso_local global i32 0, align 4
@rnh_lock = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@RTM_DELETE = common dso_local global i64 0, align 8
@RTF_HOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in_ifscrub(%struct.ifnet* %0, %struct.in_ifaddr* %1, i32 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.in_ifaddr*, align 8
  %6 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.in_ifaddr* %1, %struct.in_ifaddr** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %8 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %7, i32 0, i32 1
  %9 = call i32 @IFA_LOCK(i32* %8)
  %10 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %11 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IFA_ROUTE, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %18 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %17, i32 0, i32 1
  %19 = call i32 @IFA_UNLOCK(i32* %18)
  br label %69

20:                                               ; preds = %3
  %21 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %22 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %21, i32 0, i32 1
  %23 = call i32 @IFA_UNLOCK(i32* %22)
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @rnh_lock, align 4
  %28 = call i32 @lck_mtx_lock(i32 %27)
  br label %29

29:                                               ; preds = %26, %20
  %30 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %31 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IFF_LOOPBACK, align 4
  %34 = load i32, i32* @IFF_POINTOPOINT, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %29
  %39 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %40 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %39, i32 0, i32 1
  %41 = load i64, i64* @RTM_DELETE, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @RTF_HOST, align 4
  %44 = call i32 @rtinit_locked(i32* %40, i32 %42, i32 %43)
  br label %51

45:                                               ; preds = %29
  %46 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %47 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %46, i32 0, i32 1
  %48 = load i64, i64* @RTM_DELETE, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @rtinit_locked(i32* %47, i32 %49, i32 0)
  br label %51

51:                                               ; preds = %45, %38
  %52 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %53 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %52, i32 0, i32 1
  %54 = call i32 @IFA_LOCK(i32* %53)
  %55 = load i32, i32* @IFA_ROUTE, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %58 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %62 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %61, i32 0, i32 1
  %63 = call i32 @IFA_UNLOCK(i32* %62)
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %51
  %67 = load i32, i32* @rnh_lock, align 4
  %68 = call i32 @lck_mtx_unlock(i32 %67)
  br label %69

69:                                               ; preds = %16, %66, %51
  ret void
}

declare dso_local i32 @IFA_LOCK(i32*) #1

declare dso_local i32 @IFA_UNLOCK(i32*) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @rtinit_locked(i32*, i32, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
