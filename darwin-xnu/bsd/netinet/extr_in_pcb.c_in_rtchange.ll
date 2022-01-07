; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_in_rtchange.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_in_rtchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.rtentry* }
%struct.rtentry = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.in_ifaddr = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@INADDR_ANY = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in_rtchange(%struct.inpcb* %0, i32 %1) #0 {
  %3 = alloca %struct.inpcb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.rtentry*, align 8
  %7 = alloca %struct.in_ifaddr*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* @FALSE, align 8
  store i64 %8, i64* %5, align 8
  %9 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %10 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  store %struct.rtentry* %12, %struct.rtentry** %6, align 8
  %13 = icmp ne %struct.rtentry* %12, null
  br i1 %13, label %14, label %38

14:                                               ; preds = %2
  store %struct.in_ifaddr* null, %struct.in_ifaddr** %7, align 8
  %15 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %16 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @INADDR_ANY, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %14
  %22 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %23 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call %struct.in_ifaddr* @ifa_foraddr(i64 %25)
  store %struct.in_ifaddr* %26, %struct.in_ifaddr** %7, align 8
  %27 = icmp ne %struct.in_ifaddr* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i64, i64* @TRUE, align 8
  store i64 %29, i64* %5, align 8
  br label %30

30:                                               ; preds = %28, %21, %14
  %31 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %32 = icmp ne %struct.in_ifaddr* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %35 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %34, i32 0, i32 0
  %36 = call i32 @IFA_REMREF(i32* %35)
  br label %37

37:                                               ; preds = %33, %30
  br label %38

38:                                               ; preds = %37, %2
  %39 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %40 = icmp eq %struct.rtentry* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i64, i64* %5, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41, %38
  %45 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %46 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %45, i32 0, i32 0
  %47 = call i32 @ROUTE_RELEASE(%struct.TYPE_4__* %46)
  br label %48

48:                                               ; preds = %44, %41
  ret void
}

declare dso_local %struct.in_ifaddr* @ifa_foraddr(i64) #1

declare dso_local i32 @IFA_REMREF(i32*) #1

declare dso_local i32 @ROUTE_RELEASE(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
