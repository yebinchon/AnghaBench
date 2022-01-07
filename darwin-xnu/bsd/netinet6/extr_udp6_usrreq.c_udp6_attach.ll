; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_udp6_usrreq.c_udp6_attach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_udp6_usrreq.c_udp6_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.proc = type { i32 }
%struct.inpcb = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@udbinfo = common dso_local global i32 0, align 4
@udp_sendspace = common dso_local global i32 0, align 4
@udp_recvspace = common dso_local global i32 0, align 4
@INP_IPV6 = common dso_local global i32 0, align 4
@ip6_mapped_addr_on = common dso_local global i64 0, align 8
@INP_IPV4 = common dso_local global i32 0, align 4
@ip_defttl = common dso_local global i32 0, align 4
@nstat_collect = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, %struct.proc*)* @udp6_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp6_attach(%struct.socket* %0, i32 %1, %struct.proc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.proc*, align 8
  %8 = alloca %struct.inpcb*, align 8
  %9 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.proc* %2, %struct.proc** %7, align 8
  %10 = load %struct.socket*, %struct.socket** %5, align 8
  %11 = call %struct.inpcb* @sotoinpcb(%struct.socket* %10)
  store %struct.inpcb* %11, %struct.inpcb** %8, align 8
  %12 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %13 = icmp ne %struct.inpcb* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %4, align 4
  br label %78

16:                                               ; preds = %3
  %17 = load %struct.socket*, %struct.socket** %5, align 8
  %18 = load %struct.proc*, %struct.proc** %7, align 8
  %19 = call i32 @in_pcballoc(%struct.socket* %17, i32* @udbinfo, %struct.proc* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %78

24:                                               ; preds = %16
  %25 = load %struct.socket*, %struct.socket** %5, align 8
  %26 = getelementptr inbounds %struct.socket, %struct.socket* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.socket*, %struct.socket** %5, align 8
  %32 = getelementptr inbounds %struct.socket, %struct.socket* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %30, %24
  %37 = load %struct.socket*, %struct.socket** %5, align 8
  %38 = load i32, i32* @udp_sendspace, align 4
  %39 = load i32, i32* @udp_recvspace, align 4
  %40 = call i32 @soreserve(%struct.socket* %37, i32 %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %78

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45, %30
  %47 = load %struct.socket*, %struct.socket** %5, align 8
  %48 = getelementptr inbounds %struct.socket, %struct.socket* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.inpcb*
  store %struct.inpcb* %50, %struct.inpcb** %8, align 8
  %51 = load i32, i32* @INP_IPV6, align 4
  %52 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %53 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load i64, i64* @ip6_mapped_addr_on, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %46
  %59 = load i32, i32* @INP_IPV4, align 4
  %60 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %61 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %58, %46
  %65 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %66 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %65, i32 0, i32 0
  store i32 -1, i32* %66, align 4
  %67 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %68 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %67, i32 0, i32 1
  store i32 -1, i32* %68, align 4
  %69 = load i32, i32* @ip_defttl, align 4
  %70 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %71 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load i64, i64* @nstat_collect, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %76 = call i32 @nstat_udp_new_pcb(%struct.inpcb* %75)
  br label %77

77:                                               ; preds = %74, %64
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %43, %22, %14
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @in_pcballoc(%struct.socket*, i32*, %struct.proc*) #1

declare dso_local i32 @soreserve(%struct.socket*, i32, i32) #1

declare dso_local i32 @nstat_udp_new_pcb(%struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
