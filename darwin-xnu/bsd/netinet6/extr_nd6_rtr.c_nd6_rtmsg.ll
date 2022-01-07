; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_nd6_rtmsg.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_nd6_rtmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtentry = type { i32, %struct.TYPE_4__*, i32, %struct.ifnet* }
%struct.TYPE_4__ = type { i32 }
%struct.ifnet = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.rt_addrinfo = type { i32* }

@RTAX_DST = common dso_local global i64 0, align 8
@RTAX_GATEWAY = common dso_local global i64 0, align 8
@RTAX_NETMASK = common dso_local global i64 0, align 8
@RTAX_IFP = common dso_local global i64 0, align 8
@RTAX_IFA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.rtentry*)* @nd6_rtmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nd6_rtmsg(i32 %0, %struct.rtentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtentry*, align 8
  %5 = alloca %struct.rt_addrinfo, align 8
  %6 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.rtentry* %1, %struct.rtentry** %4, align 8
  %7 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %8 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %7, i32 0, i32 3
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %6, align 8
  %10 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %11 = call i32 @RT_LOCK_ASSERT_HELD(%struct.rtentry* %10)
  %12 = ptrtoint %struct.rt_addrinfo* %5 to i32
  %13 = call i32 @bzero(i32 %12, i32 8)
  %14 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %15 = call i32 @rt_key(%struct.rtentry* %14)
  %16 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %5, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @RTAX_DST, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  store i32 %15, i32* %19, align 4
  %20 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %21 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %5, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @RTAX_GATEWAY, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32 %22, i32* %26, align 4
  %27 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %28 = call i32 @rt_mask(%struct.rtentry* %27)
  %29 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %5, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @RTAX_NETMASK, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %28, i32* %32, align 4
  %33 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %34 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %5, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @RTAX_IFP, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32 %37, i32* %41, align 4
  %42 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %43 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %5, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @RTAX_IFA, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %53 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @rt_missmsg(i32 %51, %struct.rt_addrinfo* %5, i32 %54, i32 0)
  ret void
}

declare dso_local i32 @RT_LOCK_ASSERT_HELD(%struct.rtentry*) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @rt_key(%struct.rtentry*) #1

declare dso_local i32 @rt_mask(%struct.rtentry*) #1

declare dso_local i32 @rt_missmsg(i32, %struct.rt_addrinfo*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
