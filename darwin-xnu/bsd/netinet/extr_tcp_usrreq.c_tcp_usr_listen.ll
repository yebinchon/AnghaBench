; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_usrreq.c_tcp_usr_listen.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_usrreq.c_tcp_usr_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.proc = type { i32 }
%struct.inpcb = type { i64 }
%struct.tcpcb = type { i32 }

@TCPS_LISTEN = common dso_local global i32 0, align 4
@PRU_LISTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.proc*)* @tcp_usr_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_usr_listen(%struct.socket* %0, %struct.proc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.proc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inpcb*, align 8
  %8 = alloca %struct.tcpcb*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.proc* %1, %struct.proc** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.socket*, %struct.socket** %4, align 8
  %10 = call %struct.inpcb* @sotoinpcb(%struct.socket* %9)
  store %struct.inpcb* %10, %struct.inpcb** %7, align 8
  %11 = call i32 (...) @COMMON_START()
  %12 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %13 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %18 = load %struct.proc*, %struct.proc** %5, align 8
  %19 = call i32 @in_pcbbind(%struct.inpcb* %17, i32* null, %struct.proc* %18)
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %16, %2
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* @TCPS_LISTEN, align 4
  %25 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %26 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i32, i32* @PRU_LISTEN, align 4
  %29 = call i32 @COMMON_END(i32 %28)
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @COMMON_START(...) #1

declare dso_local i32 @in_pcbbind(%struct.inpcb*, i32*, %struct.proc*) #1

declare dso_local i32 @COMMON_END(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
