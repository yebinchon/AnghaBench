; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_setrouter.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_setrouter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32 }
%struct.nd_ifinfo = type { i32, i32, i64 }

@IFF_LOOPBACK = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ND6_IFF_PROXY_PREFIXES = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IFEF_IPV6_ROUTER = common dso_local global i32 0, align 4
@nd6_mutex = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32)* @in6_setrouter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in6_setrouter(%struct.ifnet* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nd_ifinfo*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %8 = icmp ne %struct.ifnet* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @VERIFY(i32 %9)
  %11 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IFF_LOOPBACK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  store i32 %18, i32* %3, align 4
  br label %94

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %61

22:                                               ; preds = %19
  store %struct.nd_ifinfo* null, %struct.nd_ifinfo** %6, align 8
  %23 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %24 = call %struct.nd_ifinfo* @ND_IFINFO(%struct.ifnet* %23)
  store %struct.nd_ifinfo* %24, %struct.nd_ifinfo** %6, align 8
  %25 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %6, align 8
  %26 = icmp ne %struct.nd_ifinfo* %25, null
  br i1 %26, label %27, label %60

27:                                               ; preds = %22
  %28 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %6, align 8
  %29 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %60

32:                                               ; preds = %27
  %33 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %6, align 8
  %34 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %33, i32 0, i32 1
  %35 = call i32 @lck_mtx_lock(i32* %34)
  %36 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %6, align 8
  %37 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @ND6_IFF_PROXY_PREFIXES, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %32
  %43 = load i32, i32* @ND6_IFF_PROXY_PREFIXES, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %6, align 8
  %46 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %6, align 8
  %50 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %49, i32 0, i32 1
  %51 = call i32 @lck_mtx_unlock(i32* %50)
  %52 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %53 = load i32, i32* @FALSE, align 4
  %54 = call i32 @nd6_if_prproxy(%struct.ifnet* %52, i32 %53)
  br label %59

55:                                               ; preds = %32
  %56 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %6, align 8
  %57 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %56, i32 0, i32 1
  %58 = call i32 @lck_mtx_unlock(i32* %57)
  br label %59

59:                                               ; preds = %55, %42
  br label %60

60:                                               ; preds = %59, %27, %22
  br label %61

61:                                               ; preds = %60, %19
  %62 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %63 = call i32 @ifnet_lock_exclusive(%struct.ifnet* %62)
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i32, i32* @IFEF_IPV6_ROUTER, align 4
  %68 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %69 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %79

72:                                               ; preds = %61
  %73 = load i32, i32* @IFEF_IPV6_ROUTER, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %76 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %72, %66
  %80 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %81 = call i32 @ifnet_lock_done(%struct.ifnet* %80)
  %82 = load i32*, i32** @nd6_mutex, align 8
  %83 = call i32 @lck_mtx_lock(i32* %82)
  %84 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %85 = call i32 @defrouter_select(%struct.ifnet* %84)
  %86 = load i32*, i32** @nd6_mutex, align 8
  %87 = call i32 @lck_mtx_unlock(i32* %86)
  %88 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @if_allmulti(%struct.ifnet* %88, i32 %89)
  %91 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %92 = load i32, i32* @FALSE, align 4
  %93 = call i32 @in6_autoconf(%struct.ifnet* %91, i32 %92)
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %79, %17
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local %struct.nd_ifinfo* @ND_IFINFO(%struct.ifnet*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @nd6_if_prproxy(%struct.ifnet*, i32) #1

declare dso_local i32 @ifnet_lock_exclusive(%struct.ifnet*) #1

declare dso_local i32 @ifnet_lock_done(%struct.ifnet*) #1

declare dso_local i32 @defrouter_select(%struct.ifnet*) #1

declare dso_local i32 @if_allmulti(%struct.ifnet*, i32) #1

declare dso_local i32 @in6_autoconf(%struct.ifnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
