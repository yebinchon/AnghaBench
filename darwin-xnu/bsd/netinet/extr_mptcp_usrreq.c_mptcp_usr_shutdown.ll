; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_usrreq.c_mptcp_usr_shutdown.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_usrreq.c_mptcp_usr_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.mppcb = type { i64 }
%struct.mptses = type { i32 }

@MPPCB_STATE_DEAD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @mptcp_usr_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptcp_usr_shutdown(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.mppcb*, align 8
  %4 = alloca %struct.mptses*, align 8
  %5 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %2, align 8
  %6 = load %struct.socket*, %struct.socket** %2, align 8
  %7 = call %struct.mppcb* @mpsotomppcb(%struct.socket* %6)
  store %struct.mppcb* %7, %struct.mppcb** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.mppcb*, %struct.mppcb** %3, align 8
  %9 = icmp eq %struct.mppcb* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.mppcb*, %struct.mppcb** %3, align 8
  %12 = getelementptr inbounds %struct.mppcb, %struct.mppcb* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MPPCB_STATE_DEAD, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %10, %1
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %5, align 4
  br label %35

18:                                               ; preds = %10
  %19 = load %struct.mppcb*, %struct.mppcb** %3, align 8
  %20 = call %struct.mptses* @mptompte(%struct.mppcb* %19)
  store %struct.mptses* %20, %struct.mptses** %4, align 8
  %21 = load %struct.mptses*, %struct.mptses** %4, align 8
  %22 = icmp ne %struct.mptses* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @VERIFY(i32 %23)
  %25 = load %struct.socket*, %struct.socket** %2, align 8
  %26 = call i32 @socantsendmore(%struct.socket* %25)
  %27 = load %struct.mptses*, %struct.mptses** %4, align 8
  %28 = call %struct.mptses* @mptcp_usrclosed(%struct.mptses* %27)
  store %struct.mptses* %28, %struct.mptses** %4, align 8
  %29 = load %struct.mptses*, %struct.mptses** %4, align 8
  %30 = icmp ne %struct.mptses* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %18
  %32 = load %struct.mptses*, %struct.mptses** %4, align 8
  %33 = call i32 @mptcp_output(%struct.mptses* %32)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %31, %18
  br label %35

35:                                               ; preds = %34, %16
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local %struct.mppcb* @mpsotomppcb(%struct.socket*) #1

declare dso_local %struct.mptses* @mptompte(%struct.mppcb*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @socantsendmore(%struct.socket*) #1

declare dso_local %struct.mptses* @mptcp_usrclosed(%struct.mptses*) #1

declare dso_local i32 @mptcp_output(%struct.mptses*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
