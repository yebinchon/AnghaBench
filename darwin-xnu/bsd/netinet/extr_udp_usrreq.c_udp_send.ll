; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_udp_usrreq.c_udp_send.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_udp_usrreq.c_udp_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.mbuf = type { i32 }
%struct.proc = type { i32 }
%struct.inpcb = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udp_send(%struct.socket* %0, i32 %1, %struct.mbuf* %2, %struct.sockaddr* %3, %struct.mbuf* %4, %struct.proc* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.socket*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca %struct.proc*, align 8
  %14 = alloca %struct.inpcb*, align 8
  store %struct.socket* %0, %struct.socket** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mbuf* %2, %struct.mbuf** %10, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %11, align 8
  store %struct.mbuf* %4, %struct.mbuf** %12, align 8
  store %struct.proc* %5, %struct.proc** %13, align 8
  %15 = load %struct.socket*, %struct.socket** %8, align 8
  %16 = call %struct.inpcb* @sotoinpcb(%struct.socket* %15)
  store %struct.inpcb* %16, %struct.inpcb** %14, align 8
  %17 = load %struct.inpcb*, %struct.inpcb** %14, align 8
  %18 = icmp eq %struct.inpcb* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %6
  %20 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %21 = icmp ne %struct.mbuf* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %24 = call i32 @m_freem(%struct.mbuf* %23)
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %27 = icmp ne %struct.mbuf* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %30 = call i32 @m_freem(%struct.mbuf* %29)
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %7, align 4
  br label %40

33:                                               ; preds = %6
  %34 = load %struct.inpcb*, %struct.inpcb** %14, align 8
  %35 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %36 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %37 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %38 = load %struct.proc*, %struct.proc** %13, align 8
  %39 = call i32 @udp_output(%struct.inpcb* %34, %struct.mbuf* %35, %struct.sockaddr* %36, %struct.mbuf* %37, %struct.proc* %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %33, %31
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @udp_output(%struct.inpcb*, %struct.mbuf*, %struct.sockaddr*, %struct.mbuf*, %struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
