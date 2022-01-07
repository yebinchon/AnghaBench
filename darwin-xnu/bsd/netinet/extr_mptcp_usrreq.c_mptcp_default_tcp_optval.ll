; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_usrreq.c_mptcp_default_tcp_optval.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_usrreq.c_mptcp_default_tcp_optval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mptses = type { i32 }
%struct.sockopt = type { i64, i64, i32 }

@IPPROTO_TCP = common dso_local global i64 0, align 8
@SOPT_GET = common dso_local global i64 0, align 8
@mptcp_subflow_keeptime = common dso_local global i32 0, align 4
@tcp_max_persist_timeout = common dso_local global i32 0, align 4
@ENOPROTOOPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mptses*, %struct.sockopt*, i32*)* @mptcp_default_tcp_optval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptcp_default_tcp_optval(%struct.mptses* %0, %struct.sockopt* %1, i32* %2) #0 {
  %4 = alloca %struct.mptses*, align 8
  %5 = alloca %struct.sockopt*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.mptses* %0, %struct.mptses** %4, align 8
  store %struct.sockopt* %1, %struct.sockopt** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %9 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @IPPROTO_TCP, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @VERIFY(i32 %13)
  %15 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %16 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SOPT_GET, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @VERIFY(i32 %20)
  %22 = load %struct.mptses*, %struct.mptses** %4, align 8
  %23 = call i32 @mpte_lock_assert_held(%struct.mptses* %22)
  %24 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %25 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %35 [
    i32 131, label %27
    i32 128, label %27
    i32 132, label %27
    i32 133, label %27
    i32 135, label %27
    i32 129, label %27
    i32 130, label %27
    i32 137, label %27
    i32 136, label %27
    i32 139, label %27
    i32 140, label %27
    i32 134, label %29
    i32 138, label %32
  ]

27:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  %28 = load i32*, i32** %6, align 8
  store i32 0, i32* %28, align 4
  br label %37

29:                                               ; preds = %3
  %30 = load i32, i32* @mptcp_subflow_keeptime, align 4
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  br label %37

32:                                               ; preds = %3
  %33 = load i32, i32* @tcp_max_persist_timeout, align 4
  %34 = load i32*, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  br label %37

35:                                               ; preds = %3
  %36 = load i32, i32* @ENOPROTOOPT, align 4
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %35, %32, %29, %27
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @mpte_lock_assert_held(%struct.mptses*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
