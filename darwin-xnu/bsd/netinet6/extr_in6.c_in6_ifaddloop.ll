; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_ifaddloop.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_ifaddloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddr = type { i32 }
%struct.rtentry = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RTF_HOST = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@RTM_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifaddr*)* @in6_ifaddloop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @in6_ifaddloop(%struct.ifaddr* %0) #0 {
  %2 = alloca %struct.ifaddr*, align 8
  %3 = alloca %struct.rtentry*, align 8
  store %struct.ifaddr* %0, %struct.ifaddr** %2, align 8
  %4 = load %struct.ifaddr*, %struct.ifaddr** %2, align 8
  %5 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.rtentry* @rtalloc1(i32 %6, i32 0, i32 0)
  store %struct.rtentry* %7, %struct.rtentry** %3, align 8
  %8 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %9 = icmp ne %struct.rtentry* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %12 = call i32 @RT_LOCK(%struct.rtentry* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %15 = icmp eq %struct.rtentry* %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %13
  %17 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %18 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @RTF_HOST, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %16
  %24 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %25 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IFF_LOOPBACK, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %23, %16, %13
  %33 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %34 = icmp ne %struct.rtentry* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %37 = call i32 @RT_REMREF_LOCKED(%struct.rtentry* %36)
  %38 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %39 = call i32 @RT_UNLOCK(%struct.rtentry* %38)
  br label %40

40:                                               ; preds = %35, %32
  %41 = load i32, i32* @RTM_ADD, align 4
  %42 = load %struct.ifaddr*, %struct.ifaddr** %2, align 8
  %43 = call i32 @in6_ifloop_request(i32 %41, %struct.ifaddr* %42)
  br label %53

44:                                               ; preds = %23
  %45 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %46 = icmp ne %struct.rtentry* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %49 = call i32 @RT_REMREF_LOCKED(%struct.rtentry* %48)
  %50 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %51 = call i32 @RT_UNLOCK(%struct.rtentry* %50)
  br label %52

52:                                               ; preds = %47, %44
  br label %53

53:                                               ; preds = %52, %40
  ret void
}

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
