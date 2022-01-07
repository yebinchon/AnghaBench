; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_mcast.c_in6p_set_multicast_if.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_mcast.c_in6p_set_multicast_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.inpcb = type { i32 }
%struct.sockopt = type { i32 }
%struct.ip6_moptions = type { %struct.ifnet* }

@EINVAL = common dso_local global i32 0, align 4
@if_index = common dso_local global i64 0, align 8
@ifindex2ifnet = common dso_local global %struct.ifnet** null, align 8
@IFF_MULTICAST = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inpcb*, %struct.sockopt*)* @in6p_set_multicast_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in6p_set_multicast_if(%struct.inpcb* %0, %struct.sockopt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca %struct.sockopt*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.ip6_moptions*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.inpcb* %0, %struct.inpcb** %4, align 8
  store %struct.sockopt* %1, %struct.sockopt** %5, align 8
  %10 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %11 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %13, 8
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %3, align 4
  br label %66

17:                                               ; preds = %2
  %18 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %19 = call i32 @sooptcopyin(%struct.sockopt* %18, i64* %8, i32 8, i32 8)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %3, align 4
  br label %66

24:                                               ; preds = %17
  %25 = call i32 (...) @ifnet_head_lock_shared()
  %26 = load i64, i64* @if_index, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = call i32 (...) @ifnet_head_done()
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %3, align 4
  br label %66

32:                                               ; preds = %24
  %33 = load %struct.ifnet**, %struct.ifnet*** @ifindex2ifnet, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds %struct.ifnet*, %struct.ifnet** %33, i64 %34
  %36 = load %struct.ifnet*, %struct.ifnet** %35, align 8
  store %struct.ifnet* %36, %struct.ifnet** %6, align 8
  %37 = call i32 (...) @ifnet_head_done()
  %38 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %39 = icmp eq %struct.ifnet* %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %32
  %41 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %42 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IFF_MULTICAST, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40, %32
  %48 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %48, i32* %3, align 4
  br label %66

49:                                               ; preds = %40
  %50 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %51 = call %struct.ip6_moptions* @in6p_findmoptions(%struct.inpcb* %50)
  store %struct.ip6_moptions* %51, %struct.ip6_moptions** %7, align 8
  %52 = load %struct.ip6_moptions*, %struct.ip6_moptions** %7, align 8
  %53 = icmp eq %struct.ip6_moptions* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @ENOMEM, align 4
  store i32 %55, i32* %3, align 4
  br label %66

56:                                               ; preds = %49
  %57 = load %struct.ip6_moptions*, %struct.ip6_moptions** %7, align 8
  %58 = call i32 @IM6O_LOCK(%struct.ip6_moptions* %57)
  %59 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %60 = load %struct.ip6_moptions*, %struct.ip6_moptions** %7, align 8
  %61 = getelementptr inbounds %struct.ip6_moptions, %struct.ip6_moptions* %60, i32 0, i32 0
  store %struct.ifnet* %59, %struct.ifnet** %61, align 8
  %62 = load %struct.ip6_moptions*, %struct.ip6_moptions** %7, align 8
  %63 = call i32 @IM6O_UNLOCK(%struct.ip6_moptions* %62)
  %64 = load %struct.ip6_moptions*, %struct.ip6_moptions** %7, align 8
  %65 = call i32 @IM6O_REMREF(%struct.ip6_moptions* %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %56, %54, %47, %29, %22, %15
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @sooptcopyin(%struct.sockopt*, i64*, i32, i32) #1

declare dso_local i32 @ifnet_head_lock_shared(...) #1

declare dso_local i32 @ifnet_head_done(...) #1

declare dso_local %struct.ip6_moptions* @in6p_findmoptions(%struct.inpcb*) #1

declare dso_local i32 @IM6O_LOCK(%struct.ip6_moptions*) #1

declare dso_local i32 @IM6O_UNLOCK(%struct.ip6_moptions*) #1

declare dso_local i32 @IM6O_REMREF(%struct.ip6_moptions*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
