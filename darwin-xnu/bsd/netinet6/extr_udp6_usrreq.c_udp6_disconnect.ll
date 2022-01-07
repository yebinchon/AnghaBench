; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_udp6_usrreq.c_udp6_disconnect.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_udp6_usrreq.c_udp6_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.pr_usrreqs* }
%struct.pr_usrreqs = type { i32 (%struct.socket*)* }
%struct.socket = type { i32 }
%struct.inpcb = type { i32, i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EPROTOTYPE = common dso_local global i32 0, align 4
@INP_IPV4 = common dso_local global i32 0, align 4
@ip_protox = common dso_local global %struct.TYPE_2__** null, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@in6addr_any = common dso_local global i32 0, align 4
@SS_ISCONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @udp6_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp6_disconnect(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca %struct.pr_usrreqs*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  %6 = load %struct.socket*, %struct.socket** %3, align 8
  %7 = call %struct.inpcb* @sotoinpcb(%struct.socket* %6)
  store %struct.inpcb* %7, %struct.inpcb** %4, align 8
  %8 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %9 = icmp eq %struct.inpcb* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %12 = icmp eq %struct.inpcb* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i32, i32* @EINVAL, align 4
  br label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @EPROTOTYPE, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %2, align 4
  br label %61

19:                                               ; preds = %1
  %20 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %21 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @INP_IPV4, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %19
  %27 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @ip_protox, align 8
  %28 = load i64, i64* @IPPROTO_UDP, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %27, i64 %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %31, align 8
  store %struct.pr_usrreqs* %32, %struct.pr_usrreqs** %5, align 8
  %33 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %5, align 8
  %34 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %33, i32 0, i32 0
  %35 = load i32 (%struct.socket*)*, i32 (%struct.socket*)** %34, align 8
  %36 = load %struct.socket*, %struct.socket** %3, align 8
  %37 = call i32 %35(%struct.socket* %36)
  store i32 %37, i32* %2, align 4
  br label %61

38:                                               ; preds = %19
  %39 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %40 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %39, i32 0, i32 3
  %41 = call i64 @IN6_IS_ADDR_UNSPECIFIED(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @ENOTCONN, align 4
  store i32 %44, i32* %2, align 4
  br label %61

45:                                               ; preds = %38
  %46 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %47 = call i32 @in6_pcbdisconnect(%struct.inpcb* %46)
  %48 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %49 = call i32 @inp_reset_fc_state(%struct.inpcb* %48)
  %50 = load i32, i32* @in6addr_any, align 4
  %51 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %52 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %54 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  %55 = load i32, i32* @SS_ISCONNECTED, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.socket*, %struct.socket** %3, align 8
  %58 = getelementptr inbounds %struct.socket, %struct.socket* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 4
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %45, %43, %26, %17
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i64 @IN6_IS_ADDR_UNSPECIFIED(i32*) #1

declare dso_local i32 @in6_pcbdisconnect(%struct.inpcb*) #1

declare dso_local i32 @inp_reset_fc_state(%struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
