; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_usrreq.c_mptcp_usr_rcvd.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_usrreq.c_mptcp_usr_rcvd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.mppcb = type { i64 }
%struct.mptses = type { i32 }

@MPPCB_STATE_DEAD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32)* @mptcp_usr_rcvd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptcp_usr_rcvd(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mppcb*, align 8
  %6 = alloca %struct.mptses*, align 8
  %7 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.socket*, %struct.socket** %3, align 8
  %9 = call %struct.mppcb* @mpsotomppcb(%struct.socket* %8)
  store %struct.mppcb* %9, %struct.mppcb** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.mppcb*, %struct.mppcb** %5, align 8
  %11 = icmp eq %struct.mppcb* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.mppcb*, %struct.mppcb** %5, align 8
  %14 = getelementptr inbounds %struct.mppcb, %struct.mppcb* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MPPCB_STATE_DEAD, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12, %2
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %7, align 4
  br label %29

20:                                               ; preds = %12
  %21 = load %struct.mppcb*, %struct.mppcb** %5, align 8
  %22 = call %struct.mptses* @mptompte(%struct.mppcb* %21)
  store %struct.mptses* %22, %struct.mptses** %6, align 8
  %23 = load %struct.mptses*, %struct.mptses** %6, align 8
  %24 = icmp ne %struct.mptses* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @VERIFY(i32 %25)
  %27 = load %struct.mptses*, %struct.mptses** %6, align 8
  %28 = call i32 @mptcp_output(%struct.mptses* %27)
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %20, %18
  %30 = load i32, i32* %7, align 4
  ret i32 %30
}

declare dso_local %struct.mppcb* @mpsotomppcb(%struct.socket*) #1

declare dso_local %struct.mptses* @mptompte(%struct.mppcb*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @mptcp_output(%struct.mptses*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
