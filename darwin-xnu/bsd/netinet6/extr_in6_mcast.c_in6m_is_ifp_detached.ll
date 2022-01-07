; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_mcast.c_in6m_is_ifp_detached.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_mcast.c_in6m_is_ifp_detached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_multi = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.in6_multi*)* @in6m_is_ifp_detached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in6m_is_ifp_detached(%struct.in6_multi* %0) #0 {
  %2 = alloca %struct.in6_multi*, align 8
  store %struct.in6_multi* %0, %struct.in6_multi** %2, align 8
  %3 = load %struct.in6_multi*, %struct.in6_multi** %2, align 8
  %4 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @VERIFY(i32 %7)
  %9 = load %struct.in6_multi*, %struct.in6_multi** %2, align 8
  %10 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.in6_multi*, %struct.in6_multi** %2, align 8
  %13 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %11, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @VERIFY(i32 %18)
  %20 = load %struct.in6_multi*, %struct.in6_multi** %2, align 8
  %21 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @ifnet_is_attached(i64 %22, i32 0)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  ret i32 %26
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @ifnet_is_attached(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
